package org.blueshit.csms.entity;

import java.util.List;

public class Page {

	//传递进来的参数
	private int pageSize ;// 页面大小
	private int pageNum;// 当前页码
	private int totalRecord;// 总记录数
	
	//计算出来的
	private int totalPage;// 总的页数
	private int startPage;// 开始页数
	private int endPage;// 结束页数
	private int startIndex;// 数据库开始去数据的地方
	
	private List list;// 保存分页数据

	public Page(int pageSize, int pageNum, int totalRecord) {
		
		this.pageSize = pageSize;
		this.pageNum = pageNum;
		this.totalRecord = totalRecord;

		// 计算出通页数
		this.totalPage = (this.totalRecord + this.pageSize - 1) / this.pageSize;
		// 计算数据库开始的地方
		this.startIndex = this.pageSize * (this.pageNum - 1);
		// 计算出开始页和结束页
		if (this.totalPage <= 10) {
			this.startPage = 1;
			this.endPage = this.totalPage;
		} else {
			this.startPage = this.pageNum - 4;
			this.endPage = this.pageNum + 5;
			if (this.startPage < 1) {
				this.startPage = 1;
				this.endPage = 10;
			}
			if (this.endPage > this.totalPage) {
				this.endPage = this.totalPage;
				this.startPage = this.totalPage - 9;
			}
		}
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

}
