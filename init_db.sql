-- 1. 创建数据库（如果不存在），指定字符集避免中文乱码
CREATE DATABASE IF NOT EXISTS test_git_mysql 
DEFAULT CHARACTER SET utf8mb4 
COLLATE utf8mb4_general_ci;

-- 2. 切换到该数据库
USE test_git_mysql;

-- 3. 创建用户信息表（如果不存在）
CREATE TABLE IF NOT EXISTS user_info (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '用户唯一ID',
    username VARCHAR(50) NOT NULL COMMENT '用户名',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间'
) COMMENT '用户基础信息表';