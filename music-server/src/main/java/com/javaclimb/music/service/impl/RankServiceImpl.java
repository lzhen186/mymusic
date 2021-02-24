package com.javaclimb.music.service.impl;

import com.javaclimb.music.dao.RankMapper;
import com.javaclimb.music.domain.Rank;
import com.javaclimb.music.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 评价service接口实现
 */
@Service
public class RankServiceImpl implements RankService {

    @Autowired
    private RankMapper rankMapper;

    @Override
    public boolean insert(Rank rank) {
        return rankMapper.insert( rank ) > 0;
    }

    @Override
    public int selectScoreSum(Integer songListId) {
        return rankMapper.selectScoreSum( songListId );
    }

    @Override
    public int selectRankNum(Integer songListId) {
        return rankMapper.selectRankNum( songListId );
    }

    @Override
    public int rankOfSongListId(Integer songListId) {
        int rankNum = rankMapper.selectRankNum( songListId );
        if(rankNum == 0){
            return 5;
        }
        return rankMapper.selectScoreSum(songListId)/rankNum;
    }
}
