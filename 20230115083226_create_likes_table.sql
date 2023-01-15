-- migrate:up
CREATE TABLE likes (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  post_id int NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY `likes_user_id_fkey` (`user_id`),
  KEY `likes_post_id_fkey` (`post_id`),
  CONSTRAINT `likes_post_id_fkey` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);
-- migrate:down
DROP TABLE likes;
