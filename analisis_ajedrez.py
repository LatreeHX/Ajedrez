import chess.pgn
import io
import mysql.connector
from stockfish import Stockfish

stockfish_path = "C:/Users/Usuario/Downloads/stockfish-windows-x86-64-sse41-popcnt/stockfish/stockfish.exe" #cambia ruta instalación si quieres probarlo
stockfish_params = {"Threads": 2, "Hash": 512, "Skill Level": 20}

DB_CONFIG = {
    "host": "localhost", #default
    "user": "root",
    "password": "",
    "database": "ajedrez"
}

def verificar_pgn(pgn_texto):
    
    pgn_stream = io.StringIO(pgn_texto.replace("\\n", "\n"))
    partida = chess.pgn.read_game(pgn_stream)
    return partida is not None

def analizar_partida(pgn_texto, nombre_jugador):
    
    stockfish = Stockfish(path=stockfish_path, parameters=stockfish_params)
    stockfish.set_depth(20)  
    pgn_stream = io.StringIO(pgn_texto.replace("\\n", "\n"))
    partida = chess.pgn.read_game(pgn_stream)

    if partida is None:
        print("No se pudo leer la partida.")
        return

    jugador_blancas = partida.headers["White"]
    jugador_negras = partida.headers["Black"]
    color_jugador = "WHITE" if jugador_blancas == nombre_jugador else "BLACK"
    print(f"---------- Analizando partida: {jugador_blancas} vs {jugador_negras} ({color_jugador}) ----------")

    tablero = partida.board()
    turno = 1
    errores = {"apertura": 0, "medio_juego": 0, "final": 0}

    def determinar_fase(turno):
        if turno < 10:
            return "apertura"
        elif turno < 30:
            return "medio_juego"
        else:
            return "final"

    for movimiento in partida.mainline_moves():
        if tablero.is_checkmate():
            print(f"[Fin de la partida] Turno {turno}: La partida terminó en jaque mate.")
            break
        if tablero.is_stalemate() or tablero.is_insufficient_material() or tablero.is_seventyfive_moves():
            print(f"[Fin de la partida] Turno {turno}: La partida terminó en tablas.")
            break

        if (color_jugador == "WHITE" and turno % 2 != 0) or (color_jugador == "BLACK" and turno % 2 == 0):
            stockfish.set_fen_position(tablero.fen())
            evaluacion_actual = stockfish.get_evaluation()
            tablero.push(movimiento)
            stockfish.set_fen_position(tablero.fen())
            evaluacion_siguiente = stockfish.get_evaluation()

            if evaluacion_actual["type"] == "cp" and evaluacion_siguiente["type"] == "cp":
                valor_actual = evaluacion_actual["value"] / 100.0
                valor_siguiente = evaluacion_siguiente["value"] / 100.0
                diferencia = abs(valor_actual - valor_siguiente)

                fase = determinar_fase(turno)
                if diferencia >= 1.5:
                    errores[fase] += 1
                    print(f"[Blunder] Turno {turno}: Error en {fase}. Diferencia: {diferencia:.2f} peones.")
            else:
                print(f"[Advertencia] Movimiento pseudo-ilegal en turno {turno}. Saltando evaluación.")
        else:
            tablero.push(movimiento)
        turno += 1


    print(f"\nTotal de errores: {errores}")
    fase_peor = max(errores, key=errores.get)
    print(f"\n ❗ El jugador {nombre_jugador} necesita mejorar en la fase: {fase_peor.upper()}\n")

    return errores

def procesar_pgns(nombre_jugador):
    
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()

    try:
        cursor.execute(f"SELECT pgn FROM partidas INNER JOIN usuarios ON partidas.id_jugador_blancas = usuarios.id_usuario OR partidas.id_jugador_negras = usuarios.id_usuario WHERE usuarios.nombre = '{nombre_jugador}'")
        partidas = cursor.fetchall()

        if not partidas:
            print(f"No se encontraron partidas para el jugador {nombre_jugador}.")
            return

        contador_errores = {"apertura": 0, "medio_juego": 0, "final": 0}

        for pgn_tuple in partidas:
            pgn_texto = pgn_tuple[0]
            if verificar_pgn(pgn_texto):
                errores = analizar_partida(pgn_texto, nombre_jugador)
                for fase in errores:
                    contador_errores[fase] += errores[fase]

        
        print("Resultados totales de todas las partidas:")
        print(f"Errores totales por fase: {contador_errores}")
        fase_peor = max(contador_errores, key=contador_errores.get)
        print(f"❗❗ En general, el jugador {nombre_jugador} necesita mejorar en la fase: {fase_peor.upper()}\n")

    except mysql.connector.Error as err:
        print(f"Error en la consulta SQL: {err}")
    finally:
        cursor.close()
        conn.close()

#main
nombre_jugador = input("Ingrese el nombre del jugador a analizar: ")
procesar_pgns(nombre_jugador)
