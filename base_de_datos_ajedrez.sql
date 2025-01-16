CREATE DATABASE chess_db;

USE chess_db;

CREATE TABLE IF NOT EXISTS Usuarios(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE,
    puntuacion INT NOT NULL
);

INSERT INTO Usuarios (nombre, puntuacion) VALUES
('Latreee', 1956),
('ChessMaster101', 1500),
('GrandChessPlayer', 1800),
('RubanCajoGM', 2460),
('ChessGenius', 1400),
('PawnKing', 1100),
('CheckmateKing', 1600),
('TheRook', 1700),
('KnightInShiningArmor', 1350),
('EndgamePro', 1200);


CREATE TABLE IF NOT EXISTS Partidas (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador_blancas INT NOT NULL,
    id_jugador_negras INT NOT NULL,
    pgn TEXT NOT NULL,
    resultado VARCHAR(10) NOT NULL,
    fecha DATE,
    FOREIGN KEY (id_jugador_blancas) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_jugador_negras) REFERENCES usuarios(id_usuario)
);


INSERT INTO Partidas (id_jugador_blancas, id_jugador_negras, pgn, resultado, fecha) VALUES
(1, 3,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.06"][Round "?"][White "Latreee"][Black "LeelaChess"][Result "0-1"][TimeControl "60"][WhiteElo "1956"][BlackElo "2800"][Termination "LeelaChess ha ganado por tiempo"][ECO "A40"][EndTime "13:01:18 PST"][Link "https://www.chess.com/game/live/129936006999"]1. d4 e5 2. dxe5 d5 3. Nf3 Bb4+ 4. c3 Be7 5. Bf4 f6 6. e3 fxe5 7. Nxe5 Nf6 8.Nf3 O-O 9. Nbd2 Nc6 10. Bb5 a6 11. Bxc6 bxc6 12. O-O Bb7 13. Re1 c5 14. b4 d415. cxd4 cxd4 16. Nxd4 Bxb4 17. a3 Bxd2 18. Qxd2 Nd5 19. Bg3 Qf6 20. Qb2 Rab8 21. Qc2 c5 22. Re2 cxd4 23. exd4 Nf4 24. Ree1 Nxg2 25. Bxb8 Nxe1 26. Rxe1 Rxb827. Qc4+ Kh8 28. Re6 Qg5+ 29. Kf1 Qg2+ 30. Ke2 Bf3+ 31. Kd3 Qf1+ 32. Kc3 Qxc4+ 33. Kxc4 Rc8+ 34. Kd3 h6 35. Ke3 Bd5 36. Re8+ Rxe8+ 37. Kd3 Rc8 0-1', '0-1', '2025.01.06'),
(1, 4,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.10"][Round "?"][White "Latreee"][Black "RubenCajoGM"][Result "1/2-1/2"][TimeControl "180"][WhiteElo "1956"][BlackElo "2780"][Termination "Partida en tablas por mutuo acuerdo"][ECO "B06"][EndTime "4:59:03 PST"][Link "https://www.chess.com/game/live/130252779743?username=gm_levan_pantsulaia"]1. d4 c5 2. d5 g6 3. c4 Bg7 4. Nc3 d6 5. e4 Bxc3+ 6. bxc3 e5 7. f4 Qf6 8. fxe5 Qh4+ 9. Kd2 Qxe4 10. exd6 Bf5 11. Nf3 Nd7 12. Qe2 Ngf6 13. Qxe4+ Nxe4+ 14. Ke1 O-O-O 15. Bd3 Nxd6 16. Bxf5 Nxf5 17. Kf2 Nd6 18. Bf4 Nxc4 19. Ng5 Nde5 20. Rad1 h6 21. Ne4 b6 22. Nf6 g5 23. Bxe5 Nxe5 24. Rhe1 Rd6 25. Ne4 Rg6 26. Nxc5 Ng4+ 27. Kg3 h5 28. h3 Nh6 29. Ne4 f5 30. Nd2 f4+ 31. Kf2 g4 32. Ne4 Nf5 33. c4 Ne3 34. Rd3 Nxc4 35. d6 Kd7 36. Rc1 Rc8 37. Rdc3 b5 38. a4 a6 39. axb5 axb5 40. Ra1 Nxd6 41. Ra7+ Kd8 42. Rxc8+ Nxc8 43. Rb7 Re6 44. Nc5 Re3 45. Rxb5 g3+ 46. Kf1 Nd6 47. Nb7+ Nxb7 48. Rxb7 h4 49. Rf7 Re4 50. Rh7 1/2-1/2', '1/2-1/2', '2025.01.10'),
(1, 5,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.10"][Round "?"][White "Latreee"][Black "LCZero"][Result "1-0"][TimeControl "180"][WhiteElo "1956"][BlackElo "2650"][Termination "Latreee ha ganado por tiempo"][ECO "A01"][EndTime "9:18:27 PST"][Link "https://www.chess.com/game/live/130267914903?username=hikaru"]1. b3 d5 2. Bb2 Nf6 3. d3 c5 4. c4 d4 5. g3 Nc6 6. Bg2 e5 7. Nf3 Bd6 8. O-O h6 9. Nbd2 Bf5 10. Ne1 Qd7 11. e4 Bh3 12. f4 Bxg2 13. Nxg2 O-O-O 14. a3 a5 15. Nf3 Rhe8 16. f5 Rh8 17. Bc1 Ne8 18. Bd2 b6 19. b4 cxb4 20. axb4 Bxb4 21. Bxb4 axb4 22. Qb3 Nd6 23. Nge1 Nb7 24. Nc2 Nc5 25. Qb1 b3 26. Na3 Kb7 27. Nd2 Na5 28. Nb5 Ra8 29. Ra3 Ra6 30. h3 f6 31. Kh2 Rha8 32. Rf2 Nc6 33. Rxa6 Rxa6 34. Nxb3 Na4 35. Qe1 Qe7 36. Nc1 Qb4 37. Qxb4 Nxb4 38. Nd6+ Kc6 39. Ne8 Ra7 40. Ra2 b5 41. cxb5+ Kxb5 42. Ra1 Rd7 43. g4 Nc3 44. Ra8 Nc2 45. h4 Kc6 46. g5 hxg5 47. hxg5 fxg5 48. Kg3 Kb7 49. Ra5 Re7 50. Nd6+ Kb6 51. Nc4+ Kc7 52. Nxe5 Kb6 53. Nc4+ Kc6 54. Kg4 Nb4 55. Ne5+ Kb6 56. Nc4+ Kc6 57. Kxg5 Nd1 58. Nb3 Nxd3 59. Nxd4+ Kb7 60. e5 N1f2 61. Nd6+ Kb6 62. Ra3 Nxe5 63. Nc8+ Kc5 64. Ne6+ Rxe6 65. fxe6 Nc6 66. e7 Ne4+ 67. Kg6 Nxe7+ 68. Nxe7 Nd2 69. Ra1 Nc4 70. Rc1 Kd4 71. Nf5+ Kd3 72. Rd1+ Nd2 73. Rh1 Ke2 74. Rh3 Nf3 75. Ng3+ Kf2 76. Nf5 1-0', '1-0', '2025.01.10'),
(1, 6,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.10"][Round "?"][White "Latreee"][Black "PawnKing"][Result "1-0"][TimeControl "180"][WhiteElo "1956"][BlackElo "1100"][Termination "Latreee ha ganado por abandono"][ECO "A01"][EndTime "8:48:07 PST"][Link "https://www.chess.com/game/live/130266586279?username=hikaru"]1. b3 Nf6 2. Bb2 g6 3. Bxf6 exf6 4. e3 d5 5. Ne2 Bd6 6. g3 O-O 7. Bg2 c6 8. d4 f5 9. Nd2 Nd7 10. c4 Nf6 11. O-O Re8 12. Nc3 dxc4 13. bxc4 h5 14. Rb1 h4 15. Nf3 hxg3 16. hxg3 Kg7 17. Qc2 Qe7 18. c5 Bc7 19. Ne2 Nd5 20. Nf4 Nf6 21. Rfd1 Rb8 22. d5 cxd5 23. Nxd5 Nxd5 24. Rxd5 Be6 25. Rd3 b6 26. c6 Rbd8 27. Nd4 a6 28. a4 Bc8 29. Rbd1 Qf6 30. Qc4 Rd6 31. Ne2 Red8 32. Rxd6 Rxd6 33. Bd5 Qe5 34. Rd3 Be6 35. Nf4 Bc8 36. Bxf7 Rxd3 37. Nxd3 Qe4 38. Bd5 Qxc4 39. Bxc4 Kf6 40. Nb4 Bd6 41. Nd5+ Ke5 42. Nxb6 Be6 43. Nd7+ Bxd7 44. cxd7 1-0', '1-0', '2025.01.10'),
(2, 7,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.10"][Round "?"][White "ChessMaster101"][Black "Shredder"][Result "0-1"][TimeControl "180"][WhiteElo "1500"][BlackElo "2500"][Termination "Shredder ha ganado por abandono"][ECO "C50"][EndTime "6:54:49 PST"][Link "https://www.chess.com/game/live/130259985167?username=lis-man"]1. e4 e5 2. Nf3 Nc6 3. Bc4 Nd4 4. Nxd4 exd4 5. Qf3 Nf6 6. d3 d6 7. O-O Be6 8. Bxe6 fxe6 9. Bg5 Be7 10. Bxf6 Bxf6 11. Nd2 O-O 12. e5 Bxe5 13. c3 Rxf3 14. Nxf3 dxc3 15. bxc3 Bxc3 16. Ne5 Bxe5 0-1', '0-1', '2025.01.10'),
(2, 8,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.08"][Round "?"][White "ChessMaster101"][Black "Hikaru"][Result "0-1"][TimeControl "180"][WhiteElo "3022"][BlackElo "3267"][Termination "Hikaru ha ganado por abandono"][ECO "B27"][EndTime "11:59:43 PST"][Link "https://www.chess.com/game/live/130105164259?username=hikaru"]1. e4 g6 2. d4 c5 3. Nc3 cxd4 4. Qxd4 Nf6 5. Nf3 Nc6 6. Qd1 d6 7. g3 Bg7 8. Bg2 Bg4 9. O-O O-O 10. h3 Bxf3 11. Bxf3 Nd7 12. Be3 Rc8 13. Rb1 Nce5 14. Be2 Nc4 15. Bxc4 Rxc4 16. Qd3 Ne5 17. Qe2 Qc8 18. f4 Nd7 19. Bxa7 b6 20. Nd5 Re8 21. c3 Rc6 22. Qb5 e6 23. Nb4 Rc5 24. Qd3 Qb7 25. Qxd6 Qxa7 26. Rbd1 Rc7 27. Nc6 Qb7 28. Ne7+ Kh8 29. f5 Be5 30. Qb4 Nc5 31. f6 Qxe4 32. Qxe4 Nxe4 0-1', '0-1', '2025.01.08'),
(2, 9,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.09"][Round "?"][White "ChessMaster101"][Black "GM_dmitrij"][Result "0-1"][TimeControl "180"][WhiteElo "3098"][BlackElo "3015"][Termination "GM_dmitrij ha ganado por abandono"][ECO "D00"][EndTime "10:35:34 PST"][Link "https://www.chess.com/game/live/130186226057?username=danielnaroditsky"] 1. d4 Nf6 2. Nc3 d5 3. Bf4 c5 4. Nf3 Nc6 5. dxc5 e6 6. e3 Bxc5 7. Bd3 O-O 8. O-O h6 9. e4 dxe4 10. Nxe4 Be7 11. Nxf6+ Bxf6 12. Qe2 Bxb2 13. Rad1 Qa5 14. c4 Bf6 15. Bd6 Re8 16. c5 e5 17. Bc4 Be6 18. Rb1 Bxc4 19. Qxc4 e4 20. Rxb7 exf3 21. Rxf7 Kh8 22. Rxf6 gxf6 23. Qh4 Kh7 24. Bf4 Re7 25. Bxh6 Kg6 26. g4 Qxc5 27. g5 Qb5 28. gxf6 Rh7 29. a4 Qh5 30. Qxh5+ Kxh5 31. Bg7 Kg6 32. Re1 Nd4 33. Re4 Nf5 34. Rf4 Rh3 35. Kf1 Nxg7 36. fxg7 Kxg7 37. Ke1 Re8+ 38. Kd1 Re2 39. Rxf3 Rxf3 40. Kxe2 Ra3 41. Kf1 Rxa4 42. Kg2 Rb4 43. Kg3 a5 44. f4 a4 45. Kg4 Kf6 46. h4 a3 47. Kh5 a2 48. Kg4 a1=Q 49. Kh5 Qg1 50. Kh6 Rb8 51. h5 Rc8 52. Kh7 Rd8 53. h6 Re8 54. f5 Kf7 55. f6 Kf8 56. f7 Re7 57. Kh8 Rd7 58. h7 0-1', '0-1', '2025.01.09'),
(2, 10,'[Event "Live Chess"][Site "Chess.com"][Date "2024.01.23"][Round "?"][White "ChessMaster101"][Black "GM_dmitrij"]Result "1-0"][TimeControl "180"][WhiteElo "2911"][BlackElo "3003"][Termination "MolecularChemist ha ganado por jaque mate"][ECO "A13"][EndTime "19:04:20 PST"][Link "https://www.chess.com/game/live/99804112867?username=gm_dmitrij"]1. Nf3 Nf6 2. c4 e6 3. e3 d5 4. Nc3 Nbd7 5. b3 Bd6 6. Bb2 b6 7. g3 O-O 8. Bg2 a6 9. O-O Bb7 10. d4 Rc8 11. cxd5 exd5 12. Rc1 Re8 13. Qe2 Qe7 14. Rfd1 b5 15. a4 b4 16. Nb1 Ne4 17. Nbd2 h5 18. Nxe4 dxe4 19. Nd2 Nf6 20. Nc4 Bd5 21. Na5 Qe6 22. Nc4 h4 23. Rc2 h3 24. Bf1 g6 25. Rdc1 Nh7 26. Nxd6 cxd6 27. Rxc8 Rxc8 28. Rxc8+ Qxc8 29. Qxa6 Qc2 30. Qxd6 Bxb3 31. Ba1 Qd1 32. Qb8+ Kg7 33. Qe5+ Kh6 34. d5 f6 35. Qf4+ g5 36. Qxe4 Bxd5 37. Qd3 Qxa1 38. Qxd5 Qxa4 39. Bxh3 b3 40. Bf5 b2 41. Qf7 Qa1+ 42. Kg2 Qa8+ 43. f3 Qh8 44. Qg6# 1-0', '1-0', '2024.01.23'),
(2, 1, '[Event "Live Chess"][Site "Chess.com"][Date "2025.01.06"][Round "?"][White "ChessMaster101"][Black "MolecularChemist"][Result "1-0"][SetUp "1"][FEN "8/8/3k4/1r6/8/6R1/5K2/8 w - - 0 1"][TimeControl "15"][WhiteElo "2867"][BlackElo "3134"][Termination "aa175 ha ganado por abandono"][EndTime "18:19:41 PST"][Link "https://www.chess.com/game/live/129955171845?username=molecularchemist"]1. Rg6+ Ke7 2. Rg7+ Kf6 3. Rg3 Rb2+ 4. Kf3 Rb1 5. Kf4 Rf1+ 6. Rf3 Ra1 7. Ke4+ Ke6 8. Kd4 Ra4+ 9. Ke3 Ra6 10. Kf2 Ra3 11. Re3+ 1-0', '1-0', '2025.01.06'),
(3, 2,'[Event "Live Chess"][Site "Chess.com"][Date "2024.12.27"][Round "-"][White "GrandChessPlayer"][Black "penguingm1"][Result "1-0"][WhiteElo "1800"][BlackElo "3008"][TimeControl "180"][EndTime "20:32:58 PST"][Termination "Victoria de mishanick por tiempo"]1. d4 d5 2. c4 e6 3. Nc3 Be7 4. Nf3 Nf6 5. Bg5 h6 6. Bxf6 Bxf6 7. cxd5 exd5 8. Qb3 c6 9. e3 O-O 10. Bd3 Re8 11. O-O Qb6 12. Qc2 Bg4 13. Nd2 Nd7 14. h3 Be6 15. f4 Bxh3 16. gxh3 Rxe3 17. Nf3 Bxd4 18. Kg2 Bf6 19. Rae1 Rae8 20. Rxe3 Rxe3 21. Nd1 Re8 22. b3 Nc5 23. Bf5 Kf8 24. h4 g6 25. Bh3 Ne4 26. Nf2 Qe3 27. Nxe4 Rxe4 28. h5 gxh5 29. Qd2 Qxf4 30. Qxf4 Rxf4 31. Ne1 Rxf1 32. Kxf1 Ke7 33. Nd3 b6 34. Ke2 Kd6 35. Bg2 h4 36. Kf3 c5 37. Kg4 c4 38. Nf4 c3 39. Nd3 c2 40. Kf3 Bg5 41. Ke2 a5 42. a4 c1=Q 43. Nxc1 Bxc1 44. Kd3 Bg5 45. Bh3 Kc5 46. Bg2 d4 47. Be4 Be3 48. Bf5 f6 49. Be6 Kb4 50. Kc2 f5 51. Bxf5 Bf2 52. Kb2 h3 53. Bxh3 d3 54. Bf5 Bd4+ 55. Kc1 Kc3 56. Kd1 d2 57. Be6 Bc5 58. Bf7 Bb4 59. Bh5 Kd3 60. Bg6+ Kc3 61. Bf7 Kd3 62. Bg6+ Ke3 63. Be8 Kf4 64. Ke2 Kg5 65. Bf7 h5 66. Bd5 h4 67. Bf3 Kf4 68. Bg2 Kg3 69. Bc6 h3 70. Bd5 h2 71. Bc6 Kf4 72. Bb7 Ke5 73. Ba8 Kd4 74. Kd1 Kc3 75. Bd5 Kb2 76. Bg2 Kxb3 77. Bc6 Ka3 78. Kc2 1-0', '1-0', '2024.12.27'),
(3, 3, '[Event "Live Chess"][Site "Chess.com"][Date "2024.12.27"][Round "-"][White "GrandChessPlayer"][Black "mishanick"][Result "0-1"][WhiteElo "3002"][BlackElo "3126"][TimeControl "180"][EndTime "20:39:01 PST"][Termination "Victoria de mishanick por jaque mate"] 1. d4 d5 2. Bf4 Nf6 3. e3 c5 4. Nc3 a6 5. dxc5 e6 6. Na4 Nbd7 7. b4 b6 8. c6 Bxb4+ 9. c3 Ba5 10. cxd7+ Bxd7 11. Rc1 Qe7 12. Qb3 b5 13. Nb2 Rc8 14. Bd3 Ne4 15. Bxe4 dxe4 16. Ne2 e5 17. Bg3 Bg4 18. Qd5 O-O 19. Qxe5 Qa3 20. Rc2 Bxe2 21. Kxe2 Bxc3 22. Qf5 g6 23. Qd7 Rfd8 24. Qb7 Bxb2 25. Qxe4 Qxa2 26. Be5 Qd5 27. Rxc8 Qd2+ 28. Kf3 Rxc8 29. h4 Bxe5 30. Qxe5 h5 31. g4 Rc2 32. Qe8+ Kg7 33. Qe5+ Kh7 34. Qg3 Qd5+ 35. e4 Rc3+ 36. Kf4 Qd6+ 37. e5 Qd4+ 38. Kg5 Qd8+ 39. Kf4 Qd4+ 40. Kg5 f6+ 41. Kxf6 Qd8+ 42. Kf7 Rc7+ 43. Ke6 Qd7+ 44. Kf6 Qe7# 0-1', '0-1', '2024.12.27'),
(3, 4, '[Event "Live Chess"] [Site "Chess.com"] [Date "2024.12.29"] [Round "-"] [White "GrandChessPlayer"] [Black "artooon"] [Result "1-0"] [WhiteElo "3132"] [BlackElo "3053"] [TimeControl "180"] [EndTime "22:13:51 PST"] [Termination "Victoria de mishanick por abandono"] 1. d4 Nf6 2. c4 Nc6 3. Nc3 e5 4. d5 Ne7 5. h4 Nf5 6. e4 Nd4 7. Be3 c5 8. f3 Nh5 9. Nge2 Qf6 10. Qd2 h6 11. O-O-O d6 12. Kb1 Bd7 13. Qc1 Rg8 14. Rh2 O-O-O 15. g4 Nxf3 16. Rf2 Bxg4 17. Bg2 g5 18. hxg5 hxg5 19. Rdf1 Nf4 20. Bxf3 Bxf3 21. Rxf3 Rh8 22. Ng3 g4 23. R3f2 Bh6 24. Qd1 Bg5 25. Qxg4+ Kb8 26. Nf5 Rdg8 27. Qd1 a6 28. a3 Rh3 29. Rf3 Rh2 30. Ka2 Qd8 31. R3f2 Rh3 32. Qb3 Ka7 33. Na4 Ne6 34. dxe6 Bxe3 35. Nxe3 fxe6 36. Rf7 1-0', '1-0', '2024.12.29'),
(3, 5,'[Event "Live Chess"][Site "Chess.com"][Date "2024.12.29"][Round "-"][White "GrandChessPlayer"][Black "mishanick"][Result "0-1"][WhiteElo "3047"][BlackElo "3138"][TimeControl "180"][EndTime "22:20:17 PST"][Termination "Victoria de mishanick por abandono"] 1. e4 c5 2. Nc3 d6 3. b3 g6 4. Bb2 Bg7 5. Bc4 Nf6 6. Rb1 O-O 7. Nge2 a6 8. a4 e6 9. d4 d5 10. exd5 exd5 11. Bd3 cxd4 12. Nxd4 Re8+ 13. Nce2 Qa5+ 14. Qd2 Qxd2+ 15. Kxd2 Ne4+ 16. Bxe4 dxe4 17. Rhd1 Bg4 18. Ke1 Nd7 19. h3 Bxe2 20. Nxe2 Nc5 21. Bxg7 Kxg7 22. Rd5 Rac8 23. Nd4 Ne6 24. Nxe6+ Rxe6 25. c4 e3 26. f3 e2 27. Rd3 b5 28. axb5 axb5 29. cxb5 Rc2 30. Rd2 Rc5 31. Rxe2 Rb6 32. b4 Rcxb5 33. Reb2 Rd6 34. Re2 h5 35. Kf2 Rd4 36. Re4 Rd2+ 37. Re2 Rd4 38. Re4 Rd2+ 39. Kf1 f5 40. Re2 Rd4 41. Reb2 h4 42. Rb3 Kf6 43. Kg1 Ke5 44. Kh2 Kf4 45. R1b2 Rc4 46. Rb1 Rd4 47. R3b2 Rc4 48. Rb3 Rc2 49. Rd1 Kg5 50. Rdb1 Rc4 51. R3b2 Kh5 52. Rb3 Rc2 53. R3b2 Rc6 54. Rb3 Rc7 55. R3b2 Ra7 56. Rb3 Ra2 57. R3b2 Ra4 58. Rb3 Ra6 59. R3b2 Rab6 60. Rb3 Rd6 61. Rc3 Rd2 62. Rc5 Rb6 63. b5 Re6 64. Rcc1 Ree2 65. Rg1 Rd7 66. b6 Rb7 67. Rgc1 Re6 68. Rc7 Rbxb6 69. f4 Kh6 70. Rd1 Re4 71. Rf1 Rbb4 72. Rc8 Rxf4 73. Rxf4 Rxf4 74. Rc2 Kg5 75. Ra2 Re4 76. Rb2 Kf4 77. Ra2 Ke5 78. Ra5+ Kf6 79. Ra6+ Kg5 80. Ra2 Kh5 81. Rb2 Kh6 82. Ra2 Rc4 83. Rb2 Ra4 84. Rc2 Kh7 85. Rb2 Kg7 86. Rc2 Kf6 87. Rb2 Kg5 88. Re2 Kh5 89. Rf2 Rc4 90. Rb2 Ra4 91. Rc2 Rd4 92. Rb2 g5 93. Ra2 Kg6 94. Kg1 Kf6 95. Kf2 Ke5 96. Ra5+ Kf4 97. Ra2 Re4 98. Rd2 Rb4 99. Rc2 Ke4 100. Re2+ Kd5 101. Rd2+ Rd4 102. Ra2 Rc4 103. Ra5+ Ke4 104. Ra2 Kd3 105. Ra3+ Rc3 106. Ra5 Ke4 107. Ra4+ Kd5 108. Ra5+ Rc5 109. Ra6 Ke4 110. Ra4+ Ke5 111. Ra6 Rd5 112. Kf3 Rd3+ 113. Ke2 Rd4 114. Rg6 Kf4 115. Ra6 Kg3 116. Rg6 g4 117. hxg4 fxg4 118. Rh6 Kxg2 119. Rxh4 Ra4 120. Rh8 g3 0-1', '0-1', '2024.12.29'),
(3, 6, '[Event "Live Chess"][Site "Chess.com"][Date "2024.12.29"][Round "-"][White "GrandChessPlayer"][Black "artooon"][Result "1-0"][WhiteElo "3144"][BlackElo "3041"][TimeControl "180"][EndTime "22:25:30 PST"][Termination "Victoria de GrandChessPlayer por abandono"] 1. d4 d5 2. c4 Nf6 3. Nc3 e6 4. Bg5 c6 5. cxd5 exd5 6. e3 h6 7. Bh4 Nbd7 8. Bd3 Nb6 9. Nf3 Be6 10. O-O Be7 11. Ne5 O-O 12. f4 Nc4 13. f5 Nxb2 14. Qc2 Nxd3 15. fxe6 Nxe5 16. dxe5 Ne4 17. exf7+ Rxf7 18. Rxf7 Kxf7 19. Bxe7 Qxe7 20. Nxe4 dxe4 21. Qc4+ Ke8 22. Rd1 Qf7 23. e6 Qf6 24. Rf1 Qe7 25. Qxe4 Qg5 26. Qb4 Qe7 27. Qe4 Qg5 28. h4 Qh5 29. Qb4 Kd8 30. Qd6+ Kc8 31. Rf8+ 1-0', '1-0', '2024.12.29'),
(4, 7,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.07"][Round "?"][White "RubenCajoGM"][Black "platy3"][Result "0-1"][TimeControl "180+1"][WhiteElo "2780"][BlackElo "2989"][Termination "platy3 ha ganado por tiempo"][ECO "B48"][EndTime "8:55:39 PST"][Link "https://www.chess.com/game/live/130007418377?username=platy3"] 1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nc3 Qc7 6. Be3 a6 7. a3 b5 8. Nxc6 Qxc6 9. Be2 Bb7 10. O-O Ne7 11. Qd4 Ng6 12. Rfd1 Rc8 13. a4 bxa4 14. Rxa4 Bc5 15. Qxc5 Qxc5 16. Bxc5 Rxc5 17. Bxa6 Bc6 18. Ra3 Ke7 19. b4 Re5 20. f3 Rb8 21. b5 Ba8 22. Rb1 Rc5 23. b6 Bc6 24. Bd3 Ne5 25. Ne2 d5 26. Nd4 dxe4 27. fxe4 Bb7 28. Ra7 Kf6 29. Nf3 Nc6 30. Ra4 Rd8 31. Kf2 g5 32. Ke3 g4 33. Nd2 Ne5 34. Nf1 Rc3 0-1', '0-1', '2025.01.07'),
(4, 8, '[Event "Live Chess"][Site "Chess.com"][Date "2025.01.07"][Round "?"][White "RubenCajoGM"][Black "platy3"][Result "0-1"][TimeControl "180+1"][WhiteElo "2780"][BlackElo "3001"][Termination "platy3 ha ganado por abandono"][ECO "B40"][EndTime "14:27:42 PST"][Link "https://www.chess.com/game/live/130027202279?username=platy3"] 1. e4 c5 2. Nf3 e6 3. g3 Nc6 4. Bg2 Nf6 5. Qe2 e5 6. O-O Be7 7. d3 O-O 8. Na3 d6 9. Nc4 h6 10. a4 Be6 11. b3 Re8 12. Bb2 Bf8 13. Nfd2 d5 14. Ne3 Nd4 15. Qd1 dxe4 16. dxe4 Qd7 17. Ndc4 Qc7 18. c3 Nc6 19. Nd5 Bxd5 20. exd5 Rad8 21. Ne3 e4 22. Qc2 Nxd5 23. Nxd5 Rxd5 24. Bxe4 Rde5 25. Bf3 g6 26. Rad1 Bg7 27. Bc1 R5e7 28. Bd5 Qe5 29. Qxg6 Qxd5 30. Qxg7+ Kxg7 31. Rxd5 b6 32. Rd6 Re6 33. Rd5 Re2 34. Kg2 Rc2 35. Rd6 Re6 36. Rxe6 fxe6 37. Rd1 Na5 38. b4 Nc4 39. bxc5 bxc5 40. Bf4 e5 41. Bc1 h5 42. Kf3 Kf6 43. Ke4 Rxf2 44. h4 Ke6 45. Bg5 Nd6+ 46. Kd3 Rf3+ 47. Kc2 Rxg3 48. Rf1 Ne4 49. Bd8 Rxc3+ 50. Kb2 Rd3 51. Rg1 0-1', '0-1', '2025.01.07'),
(4, 9, '[Event "Live Chess"][Site "Chess.com"][Date "2024.12.22"][Round "?"][White "RubenCajoGM"][Black "LiamPutnam2008"][Result "1-0"][TimeControl "180"][WhiteElo "2780"][BlackElo "2968"][Termination "RubenCajoGM ha ganado por abandono"][ECO "C42"][EndTime "17:30:42 PST"][Link "https://www.chess.com/game/live/128656359733?username=liamputnam2008"] 1. e4 e5 2. Nf3 Nf6 3. Nxe5 d6 4. Nf3 Nxe4 5. d4 d5 6. Bd3 Bd6 7. O-O O-O 8. c4 c6 9. Re1 Bf5 10. Qb3 Na6 11. cxd5 cxd5 12. Nc3 Nb4 13. Bxe4 dxe4 14. Nxe4 Rc8 15. Bg5 Qd7 16. Nxd6 Qxd6 17. Be7 1-0', '1-0', '2024.12.22'),
(4, 10,'[Event "Live Chess"][Site "Chess.com"][Date "2025.01.06"][Round "?"][White "RubenCajoGM"][Black "LiamPutnam2008"][Result "0-1"][SetUp "1"][FEN "8/8/3k4/1r6/8/6R1/5K2/8 w - - 0 1"][TimeControl "15"][WhiteElo "2780"][BlackElo "3204"][Termination "LiamPutnam2008 ha ganado por tiempo"][EndTime "18:16:46 PST"][Link "https://www.chess.com/game/live/129955146829?username=aa175"] 1. Rg6+ Ke7 2. Rg7+ Kf8 3. Rg2 Rb2+ 4. Kg3 Rb3+ 5. Kh2 Rb4 6. Rf2+ Kg7 7. Re2 Kh6 8. Kg2 Rh4 9. Kf2 Rg4 10. Rd2 Rg6 11. Kf3 Rf6+ 12. Ke3 Rg6 13. Kd3 Re6 14. Kc2 Rb6 15. Kc1 Rc6+ 16. Kd1 Rb6 17. Ke2 Ra6 18. Rd3 Re6+ 19. Kd2 Rf6 20. Re3 Rg6 21. Rd3 Rc6 22. Rc3 Rg6 23. Kc2 Rg2+ 24. Kb3 Rg5 25. Rc6+ Kh5 26. Rc3 Rg4 27. Rc4 Rg3+ 28. Kb4 Rg8 29. Rc5+ Kg4 30. Kb5 Kf3 31. Kb4 Ke2 32. Kb5 Kd3 33. Kb4 Kd4 34. Rc3 Rb8+ 35. Ka5 Kxc3 36. Ka6 Kc4 37. Ka7 Rb5 38. Ka6 Kc5 39. Ka7 Kc6 40. Ka6 Kc5 0-1', '0-1', '2025.01.06'),
(4, 1, '[Event "Live Chess"][Site "Chess.com"][Date "2025.01.06"][Round "?"][White "RubenCajoGM"][Black "Latreee"][Result "0-1"][TimeControl "60"][WhiteElo "2780"][BlackElo "1956"][Termination "Latreee ha ganado por tiempo"][ECO "D02"][EndTime "13:07:16 PST"][Link "https://www.chess.com/game/live/129936553309"] 1. d4 d5 2. Bf4 Nf6 3. Nf3 Bf5 4. c3 e6 5. Nbd2 c5 6. Qb3 cxd4 7. cxd4 Nc6 8. e3 Be7 9. Bb5 Qc8 10. Qa4 O-O 11. O-O a6 12. Be2 b5 13. Qb3 Ne4 14. Nxe4 Bxe4 15. Qd1 h6 16. Bd3 Bxd3 17. Qxd3 Nb4 18. Qd2 Bf6 19. Rfc1 Qd7 20. Be5 a5 21. Bxf6 gxf6 22. a3 Na6 23. Qe2 e5 24. Nh4 Kh7 25. Qf3 e4 26. Qg3 f5 27. f3 Qe6 28. fxe4 fxe4 29. Qf4 Qe7 30. Nf5 Qf6 31. Rf1 Nc7 32. Nh4 Ne6 33. Qxf6 Kg8 34. Qf5 Kh8 0-1', '0-1', '2025.01.06');




CREATE TABLE IF NOT EXISTS Problemas_Finales (
    id_problema INT AUTO_INCREMENT PRIMARY KEY,
    fen VARCHAR(255) NOT NULL UNIQUE,
    solucion TEXT NOT NULL,
    dificultad ENUM('fácil', 'medio', 'difícil') NOT NULL
);


CREATE TABLE IF NOT EXISTS Problemas_MedioJuego (
    id_problema INT AUTO_INCREMENT PRIMARY KEY,
    fen VARCHAR(255) NOT NULL UNIQUE,
    solucion TEXT NOT NULL,
    dificultad ENUM('fácil', 'medio', 'difícil') NOT NULL
);



INSERT INTO Problemas_Finales (fen, solucion, dificultad) VALUES

('8/8/8/8/4k3/5R2/8/4K3 w - - 0 1', '1. Re4+ Kf3 2. Kd2', 'fácil'),
('8/8/8/8/4k3/8/3R4/4K3 w - - 0 1', '1. Rd4+ Ke3 2. Kd1', 'fácil'),
('8/5k2/5p2/8/8/5K2/8/8 w - - 0 1', '1. Kf4 Kg6 2. Kg4', 'fácil'),
('8/8/8/3k4/8/3N4/8/4K3 w - - 0 1', '1. Ne5 Kc5 2. Nd7+', 'fácil'),
('8/8/8/8/2k5/8/2N5/5K2 w - - 0 1', '1. Nb4 Kc5 2. Nd3+', 'fácil'),


('8/8/8/8/2k5/5N2/8/4K3 w - - 0 1', '1. Nd4 Kd5 2. Nc6', 'medio'),
('8/8/8/3k4/8/3N4/8/5K2 w - - 0 1', '1. Nf4 Kc5 2. Ke3', 'medio'),
('8/8/8/8/8/2kN4/8/4K3 w - - 0 1', '1. Nc1 Kd5 2. Kd1', 'medio'),
('8/8/8/8/4k3/8/8/4K2R w - - 0 1', '1. Rf1 Kd4 2. Ke2', 'medio'),
('8/8/8/8/3k4/8/4R3/4K3 w - - 0 1', '1. Re2 Kd5 2. Kf2', 'medio'),


('8/8/8/8/4k3/5N2/8/4K3 w - - 0 1', '1. Ng1 Ke4 2. Nf3', 'difícil'),
('8/8/8/8/4k3/5N2/8/5K2 w - - 0 1', '1. Ng3 Ke4 2. Nf2+', 'difícil'),
('8/8/8/8/8/3k4/3N4/4K3 w - - 0 1', '1. Nc1 Kc4 2. Nd3+', 'difícil'),
('8/8/8/8/3k4/5N2/8/5K2 w - - 0 1', '1. Nf3 Kd5 2. Ke3', 'difícil'),
('8/8/8/8/4k3/8/4Q3/4K3 w - - 0 1', '1. Qd1+ Kc5 2. Kf2', 'difícil');



INSERT INTO problemas_mediojuego (fen, solucion, dificultad) VALUES
('8/8/8/4k3/4R3/8/4K3/8 w - - 0 1', '1. Re4+ Kd5 2. Kd3', 'fácil'),
('8/8/8/5k2/8/8/4R3/4K3 w - - 0 1', '1. Re1+ Kf5 2. Kf3', 'fácil'),
('8/8/8/4k3/3R4/8/4K3/8 w - - 0 1', '1. Re4+ Kd5 2. Kd3', 'fácil'),
('8/5k2/8/8/8/5K2/4R3/8 w - - 0 1', '1. Re2+ Kf5 2. Kf3', 'fácil'),
('8/5k2/8/8/4R3/5K2/8/8 w - - 0 1', '1. Re5+ Kf6 2. Kf4', 'fácil'),
('8/8/8/4k3/8/5N2/4K3/8 w - - 0 1', '1. Nf4+ Ke5 2. Kf3', 'medio'),
('8/8/4k3/8/8/2K5/2N5/8 w - - 0 1', '1. Nc4+ Ke6 2. Kd4', 'medio'),
('8/8/8/3k4/8/8/4K3/3N4 w - - 0 1', '1. Nd6+ Kc5 2. Ne4+', 'medio'),
('8/8/3k4/8/8/8/4N3/4K3 w - - 0 1', '1. Ne4+ Kd5 2. Nd2+', 'medio'),
('8/8/8/4k3/2N5/8/4K3/8 w - - 0 1', '1. Nc4+ Ke6 2. Kd4', 'medio'),
('8/8/4k3/8/8/8/2B1K3/8 w - - 0 1', '1. Bc4+ Ke5 2. Kf3', 'difícil'),
('8/8/4k3/8/8/8/3B4/4K3 w - - 0 1', '1. Bd5+ Ke5 2. Kf3', 'difícil'),
('8/8/8/4k3/3Q4/8/8/4K3 w - - 0 1', '1. Qd4+ Kc6 2. Qd8', 'difícil'),
('8/8/8/5k2/8/8/5N2/4K3 w - - 0 1', '1. Ng4+ Ke6 2. Kf4', 'difícil'),
('8/5k2/8/8/8/5K2/2Q5/8 w - - 0 1', '1. Qc5+ Ke6 2. Qd4', 'difícil');


CREATE TABLE IF NOT EXISTS Aperturas_ECO (
    eco_code VARCHAR(10) NOT NULL UNIQUE,
    nombre VARCHAR(255) NOT NULL,
    variante VARCHAR(255) NOT NULL,
    PRIMARY KEY (eco_code)
);

CREATE TABLE IF NOT EXISTS Jugadas_Estilos (
    nombre VARCHAR(255) NOT NULL,
    variante VARCHAR(255) NOT NULL,
    primera_jugada VARCHAR(10),
    estilo VARCHAR(255),
    PRIMARY KEY (nombre, variante)
);



INSERT INTO Aperturas_ECO (eco_code, nombre, variante) VALUES
('C20', 'Apertura del Centro', 'Sin variante'),
('C50', 'Apertura Italiana', 'Giuoco Piano'),
('C44', 'Apertura Escocesa', 'Variante clásica'),
('C65', 'Defensa Española', 'Variante Arkhangelsk'),
('D02', 'Sistema Colle', 'Sin variante'),
('D08', 'Gambito de Dama Rehusado', 'Variante ortodoxa'),
('D10', 'Defensa Slav', 'Sin variante'),
('D70', 'Defensa Grünfeld', 'Variante del cambio'),
('E12', 'Defensa Nimzo-India', 'Variante clásica'),
('E60', 'Apertura India de Rey', 'Ataque clásico'),
('A11', 'Apertura Inglesa', 'Variante Botvinnik'),
('A04', 'Apertura Reti', 'Ataque Zukertort'),
('B02', 'Defensa Alekhine', 'Ataque de los Cuatro Peones'),
('B01', 'Defensa Escandinava', 'Variante principal'),
('A01', 'Apertura Larsen', 'Ataque Nimzowitsch'),
('B23', 'Apertura Vienna', 'Variante fianchetto'),
('B20', 'Defensa Siciliana', 'Variante Sveshnikov'),
('A03', 'Apertura Bird', 'Variante clásica'),
('C41', 'Defensa Philidor', 'Variante Hanham'),
('D07', 'Defensa Ortodoxa', 'Variante principal'),
('A06', 'Apertura Reti', 'Variante Tartakower'),
('A40', 'Apertura Polaca', 'Sin variante'),
('A45', 'Sistema Trompowsky', 'Variante Anti-Benoni'),
('A46', 'Defensa Torre', 'Ataque Moderno'),
('A50', 'Sistema Benoni', 'Sin variante'),
('B06', 'Defensa Pirc', 'Variante clásica'),
('B07', 'Defensa Robatsch', 'Variante normal'),
('C00', 'Defensa Francesa', 'Sin variante'),
('C10', 'Defensa Francesa', 'Variante Rubinstein'),
('C11', 'Defensa Francesa', 'Variante Steinitz'),
('C12', 'Defensa Francesa', 'Variante del cambio'),
('C13', 'Defensa Francesa', 'Variante clásica'),
('C18', 'Defensa Francesa', 'Variante Winawer'),
('C19', 'Defensa Francesa', 'Variante avanzada'),
('C21', 'Apertura Danesa', 'Gambito principal'),
('C23', 'Apertura Vienesa', 'Variante Fianchetto'),
('C25', 'Apertura Vienesa', 'Variante clásica'),
('C30', 'Apertura Bird', 'Ataque Holandés'),
('C31', 'Gambito Evans', 'Variante principal'),
('C33', 'Apertura Italiana', 'Variante Giuoco Piano'),
('C34', 'Apertura Italiana', 'Variante Evans'),
('C35', 'Apertura Italiana', 'Variante Gioco Pianissimo'),
('C40', 'Defensa Rusa', 'Variante Cochrane'),
('C42', 'Defensa Petroff', 'Variante Steinitz'),
('C43', 'Defensa Petroff', 'Variante Clásica'),
('C45', 'Apertura Escocesa', 'Gambito Escocés'),
('C46', 'Apertura Escocesa', 'Variante de los Cuatro Caballos'),
('C47', 'Defensa Española', 'Variante Morphy'),
('C48', 'Defensa Española', 'Ataque Marshall'),
('C49', 'Defensa Española', 'Variante Cerrada');


INSERT INTO Jugadas_Estilos (nombre, variante, primera_jugada, estilo) VALUES
('Apertura del Centro', 'Sin variante', 'e4', 'sólida'),
('Apertura Italiana', 'Giuoco Piano', 'e4', 'posicional'),
('Apertura Escocesa', 'Variante clásica', 'e4', 'agresiva'),
('Defensa Española', 'Variante Arkhangelsk', 'e4', 'estratégica'),
('Sistema Colle', 'Sin variante', 'd4', 'sólida'),
('Gambito de Dama Rehusado', 'Variante ortodoxa', 'd4', 'posicional'),
('Defensa Slav', 'Sin variante', 'd4', 'sólida'),
('Defensa Grünfeld', 'Variante del cambio', 'd4', 'agresiva'),
('Defensa Nimzo-India', 'Variante clásica', 'd4', 'estratégica'),
('Apertura India de Rey', 'Ataque clásico', 'd4', 'ofensiva'),
('Apertura Inglesa', 'Variante Botvinnik', 'c4', 'posicional'),
('Apertura Reti', 'Ataque Zukertort', 'Nf3', 'estratégica'),
('Defensa Alekhine', 'Ataque de los Cuatro Peones', 'e4', 'agresiva'),
('Defensa Escandinava', 'Variante principal', 'e4', 'sólida'),
('Apertura Larsen', 'Ataque Nimzowitsch', 'b3', 'estratégica'),
('Apertura Vienna', 'Variante fianchetto', 'e4', 'ofensiva'),
('Defensa Siciliana', 'Variante Sveshnikov', 'e4', 'agresiva'),
('Apertura Bird', 'Variante clásica', 'f4', 'posicional'),
('Defensa Philidor', 'Variante Hanham', 'e4', 'sólida'),
('Defensa Ortodoxa', 'Variante principal', 'd4', 'estratégica'),
('Apertura Reti', 'Variante Tartakower', 'Nf3', 'posicional'),
('Apertura Polaca', 'Sin variante', 'b4', 'agresiva'),
('Sistema Trompowsky', 'Variante Anti-Benoni', 'd4', 'ofensiva'),
('Defensa Torre', 'Ataque Moderno', 'd4', 'estratégica'),
('Sistema Benoni', 'Sin variante', 'd4', 'sólida'),
('Defensa Pirc', 'Variante clásica', 'e4', 'estratégica'),
('Defensa Robatsch', 'Variante normal', 'e4', 'posicional'),
('Defensa Francesa', 'Sin variante', 'e4', 'sólida'),
('Defensa Francesa', 'Variante Rubinstein', 'e4', 'estratégica'),
('Defensa Francesa', 'Variante Steinitz', 'e4', 'posicional'),
('Defensa Francesa', 'Variante del cambio', 'e4', 'sólida'),
('Defensa Francesa', 'Variante clásica', 'e4', 'agresiva'),
('Defensa Francesa', 'Variante Winawer', 'e4', 'ofensiva'),
('Defensa Francesa', 'Variante avanzada', 'e4', 'estratégica'),
('Apertura Danesa', 'Gambito principal', 'e4', 'agresiva'),
('Apertura Vienesa', 'Variante Fianchetto', 'e4', 'posicional'),
('Apertura Vienesa', 'Variante clásica', 'e4', 'sólida'),
('Apertura Bird', 'Ataque Holandés', 'f4', 'ofensiva'),
('Gambito Evans', 'Variante principal', 'e4', 'agresiva'),
('Apertura Italiana', 'Variante Giuoco Piano', 'e4', 'estratégica'),
('Apertura Italiana', 'Variante Evans', 'e4', 'posicional'),
('Apertura Italiana', 'Variante Gioco Pianissimo', 'e4', 'sólida'),
('Defensa Rusa', 'Variante Cochrane', 'e4', 'estratégica'),
('Defensa Petroff', 'Variante Steinitz', 'e4', 'sólida'),
('Defensa Petroff', 'Variante Clásica', 'e4', 'posicional'),
('Apertura Escocesa', 'Gambito Escocés', 'e4', 'agresiva'),
('Apertura Escocesa', 'Variante de los Cuatro Caballos', 'e4', 'posicional'),
('Defensa Española', 'Variante Morphy', 'e4', 'sólida'),
('Defensa Española', 'Ataque Marshall', 'e4', 'ofensiva'),
('Defensa Española', 'Variante Cerrada', 'e4', 'estratégica');


-- CREATE TABLE IF NOT EXISTS Aperturas (
--     id_apertura INT AUTO_INCREMENT PRIMARY KEY,
--     eco_code VARCHAR(10) NOT NULL UNIQUE,
--     nombre VARCHAR(255) NOT NULL,
--     variante VARCHAR(255) NOT NULL,
--     primera_jugada VARCHAR(10),
--     estilo VARCHAR(255)
-- );

-- CREATE TABLE IF NOT EXISTS Bots (
--     id_bot INT AUTO_INCREMENT PRIMARY KEY,
--     nombre VARCHAR(255) NOT NULL UNIQUE,
--     puntuacion INT NOT NULL,
-- );

-- INSERT INTO Bots (nombre, puntuacion) VALUES
-- ('Stockfish', 3000),
-- ('Komodo', 2900),
-- ('LeelaChess', 2800),
-- ('Houdini', 2700),
-- ('LCZero', 2650),
-- ('Fritz', 2600),
-- ('Shredder', 2500),
-- ('Rybka', 2400),
-- ('Crafty', 2300),
-- ('DeepBlue', 2200);




SELECT aperturas_eco.eco_code, aperturas_eco.nombre, aperturas_eco.variante 
FROM jugadas_estilos JOIN aperturas_eco ON jugadas_estilos.nombre = aperturas_eco.nombre 
WHERE estilo = 'agresivo' OR primera_jugada = 'e4';

SELECT fen, solucion, dificultad
FROM problemas_finales 
WHERE dificultad = 'fácil';


SELECT COUNT(*) 
FROM partidas 
WHERE id_jugador_blancas IN (SELECT id_usuario FROM usuarios WHERE nombre = 'Latreee') 
OR id_jugador_negras IN (SELECT id_usuario FROM usuarios WHERE nombre = 'Latreee');
