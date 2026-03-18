-- 1. 创建数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS test_git_mysql 
DEFAULT CHARACTER SET utf8mb4 
COLLATE utf8mb4_general_ci;

-- 2. 切换到该数据库
USE test_git_mysql;

-- 3. 创建用户信息表（如果不存在）
CREATE TABLE IF NOT EXISTS user_info (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '用户唯一ID',
    username VARCHAR(50) NOT NULL COMMENT '用户名',
    phone VARCHAR(20) COMMENT '用户手机号' -- 新增字段
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间'
) COMMENT '用户基础信息表';

-- 4. 兜底：若表已存在，新增phone字段（避免执行脚本时报错）
ALTER TABLE user_info 
ADD COLUMN IF NOT EXISTS phone VARCHAR(20) COMMENT '用户手机号';