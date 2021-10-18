package com.jeonghwapark.buyorrent.paging;

public class Pager {
	private int PAGE_SCALE = 10; // 한 페이지 게시물 개수
	private int BLOCK_SCALE = 5; // 현재 보여지는 페이지 번호 수 
	
	private int currPage; // 클릭했을 때 현재 페이지 
	private int prevPage;
	private int nextPage;
	private int totPage;
	
	// 한 블럭 이동할 때 
	private int currBlock;
	private int prevBlock;
	private int nextBlock;
	private int totBlock;
	
	// 맨 처음 또는 맨 뒤 페이지로 이동할 때 
	private int pageBegin;
	private int pageEnd;
	
	// 맨 처음 또는 맨 뒤 블럭으로 이동할 때 
	private int blockBegin;
	private int blockEnd;
	
	// 페이지 생성자 
	public Pager(int count, int currPage) {
		this.currPage = currPage;
		currBlock = 1;
		
		setTotPage(count);
		setTotBlock();
		
		setPageRange(currPage);
		setBlockRange();
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotPage() {
		return totPage;
	}

	public void setTotPage(int count) {
		totPage = (int)Math.ceil(count * 1.0 / PAGE_SCALE);
	}

	public int getCurrBlock() {
		return currBlock;
	}

	public void setCurrBlock(int currBlock) {
		this.currBlock = currBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public void setTotBlock() {
		totBlock = (int)Math.ceil(totPage / BLOCK_SCALE);
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
	
	public void setPageRange(int currPage) {
		pageBegin = (currPage - 1) * PAGE_SCALE;
		pageEnd = (int)(Math.ceil(currPage / (double)PAGE_SCALE) * PAGE_SCALE);
	}
	
	public void setBlockRange() {
		currBlock = (int)Math.ceil((currPage - 1) / BLOCK_SCALE) + 1;
		blockBegin = (currBlock - 1) * BLOCK_SCALE + 1;
		blockEnd = blockBegin + BLOCK_SCALE - 1;
		
		if(blockEnd > totPage) blockEnd = totPage;
		
		prevPage = (currPage == 1)? 1 : (currPage - 1) * BLOCK_SCALE;
		nextPage = currBlock > totBlock? (currBlock * BLOCK_SCALE) : (currBlock & BLOCK_SCALE) + 1;
		
		if(nextPage >= totPage) nextPage = totPage;
	}
}
