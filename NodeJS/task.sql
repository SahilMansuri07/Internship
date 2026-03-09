CREATE TABLE `tbl_post_image` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `media_url` varchar(256) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_post_comments` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tbl_post_rating` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tbl_post_ranking` (
  `id` bigint(20) NOT NULL,
  `post_media_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ranking` INT NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_post_saved` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_user_follows` (
  `id` bigint(20) NOT NULL,
  `sender_user_id` bigint(20) NOT NULL,
  `receiver_user_id` bigint(20) NOT NULL,
  `sending_date` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_name` VARCHAR(64) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tbl_group_members` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_post_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1=active,0=inactive',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_post_tag_bridge` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `full_name` varchar(32) DEFAULT NULL,
  `country_code` varchar(8) DEFAULT NULL,       
  `mobile` varchar(16) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `date_of_birth` date ,
  `language` enum('english','francaise','espanola') DEFAULT 'english',
  `profile_pic` varchar(256) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tbl_user_device` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_token` varchar(256) DEFAULT NULL,
  `device_token` varchar(256) DEFAULT NULL,
  `device_type` enum('A','I','W') DEFAULT NULL COMMENT 'A=Android, I=iOS, W=Website',
  `device_name` varchar(128) DEFAULT NULL,
  `device_model` varchar(256) DEFAULT NULL,
  `os_version` varchar(32) DEFAULT NULL,
  `uuid` varchar(128) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 ,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tbl_user_otp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_through` enum('login','register','forgot_password') DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `expire_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_delete` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;