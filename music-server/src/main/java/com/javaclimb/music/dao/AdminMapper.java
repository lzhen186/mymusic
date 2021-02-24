package com.javaclimb.music.dao;

import org.springframework.stereotype.Repository;

/**
 * 管理员Dao
 */
@Repository
public interface AdminMapper {
    /**
     * 验证密码是否正确
     * @param username
     * @param password
     * @return
     */
    public int verifyPassword(String username,String password);
}
