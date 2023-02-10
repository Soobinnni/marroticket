package com.marroticket.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.marroticket.umember.play.domain.PlayVO;

@Mapper
public interface PlayMapper {
	
	public List<PlayVO> playCurrentList() throws Exception;

	public List<PlayVO> playPassList() throws Exception;

	public List<PlayVO> playExpectedList() throws Exception;

	public PlayVO read(Integer pNumber) throws Exception;

	public String getPposter(Integer pnumber) throws Exception;

	/*
	 * public List<PlayVO> quickReserve() throws Exception;
	 */}
