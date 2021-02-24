package com.javaclimb.music.service;

import com.javaclimb.music.domain.Singer;

import java.util.List;

/**
 * 歌手service接口
 */
public interface SingerService {

    /**
     * 增加
     * @param singer
     * @return
     */
    public boolean insert(Singer singer);

    /**
     * 修改
     * @param singer
     * @return
     */
    public boolean update(Singer singer);

    /**
     * 删除
     * @param id
     * @return
     */
    public boolean delete(Integer id);

    /**
     * 根据主键查询整个对象
     * @param id
     * @return
     */
    public Singer selectByPrimaryKey(Integer id);

    /**
     * 查询所有歌手
     * @return
     */
    public List<Singer> allSinger();

    /**
     * 根据歌手名模糊查询
     * @param name
     * @return
     */
    public List<Singer> singerOfName(String name);

    /**
     * 根据性别查询
     * @param sex
     * @return
     */
    public List<Singer> singerOfSex(Integer sex);

}
