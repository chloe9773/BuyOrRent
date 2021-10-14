package com.jeonghwapark.buyorrent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.BoardVO;
import com.jeonghwapark.buyorrent.repository.BoardDao;

@Service
public class BoardSrv {
	@Autowired
	BoardDao bDao;
	
	// 한 게시판 정보 불러오기 
	public BoardVO getBoardOne(int id) {
		return bDao.getBoardOne(id);
	}
}
