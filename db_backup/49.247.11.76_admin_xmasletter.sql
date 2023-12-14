-- [TABLE CREATE SQL] TB_QWER_MAILBOX
CREATE TABLE `TB_QWER_MAILBOX` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contents` varchar(255) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- [TABLE CREATE SQL] TB_REQUEST_QWER
CREATE TABLE `TB_REQUEST_QWER` (
  `userId` int unsigned NOT NULL,
  `addedAt` datetime DEFAULT NULL,
  `requestDate` date NOT NULL,
  PRIMARY KEY (`userId`,`requestDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- [TABLE CREATE SQL] TB_USER
CREATE TABLE `TB_USER` (
  `userId` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `uuid` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `uid` (`uid`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- [TABLE CREATE SQL] TB_USER_MAILBOX
CREATE TABLE `TB_USER_MAILBOX` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `type` int DEFAULT NULL COMMENT '1:txt, 2:audio, 3:qwer',
  `addedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
