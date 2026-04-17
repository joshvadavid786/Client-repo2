CREATE TABLE users (
    user_id         BIGSERIAL PRIMARY KEY,
 
    username        VARCHAR(50) NOT NULL UNIQUE,
    password_hash   TEXT NOT NULL,
 
    is_active       BOOLEAN NOT NULL DEFAULT TRUE,
 
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
 
    CONSTRAINT username_length_chk CHECK (char_length(username) >= 4),
    CONSTRAINT password_length_chk CHECK (char_length(password_hash) >= 60)
);
 
WHERE username = 'john_doe';
 
CHECK (char_length(username) >= 4)
CHECK (char_length(password_hash) >= 60)
 
CREATE INDEX idx_users_username ON users(username);
 
INSERT INTO users (username, password_hash)
VALUES (
    'joshva',
    '$2y$10$VhYfYh0xR..hashedPasswordHere'
);
 
password_hash($password, PASSWORD_BCRYPT);
 
SELECT user_id, password_hash
FROM users
WHERE username = $1
  AND is_active = true;
 
password_verify($password, $password_hash);
 
CREATE TABLE login_attempts (
    attempt_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(user_id),
    attempt_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    success BOOLEAN
);
 
role_id, user_roles, authorities
 
email, is_verified, otp_secret
 
 