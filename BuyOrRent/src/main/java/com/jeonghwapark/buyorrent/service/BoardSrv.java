package com.jeonghwapark.buyorrent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.repository.BoardDao;

@Service
public class BoardSrv {
	@Autowired
	BoardDao bDao;
	
	
}
