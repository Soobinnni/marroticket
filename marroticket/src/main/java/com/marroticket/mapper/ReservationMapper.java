package com.marroticket.mapper;

import java.util.List;
import java.util.Map;

import com.marroticket.umember.reservation.domain.SeatVO;
import org.apache.ibatis.annotations.Param;

import com.marroticket.umember.reservation.domain.ReservationVO;

public interface ReservationMapper {

	List<ReservationVO> getReservationListByUNumber(int uNumber) throws Exception;

	public List<SeatVO> read(@Param("ticketNum") String ticketNum) throws Exception;
	public List<SeatVO> readReserving(@Param("ticketNum") String ticketNum) throws Exception;
	public int delete(ReservationVO vo) throws Exception;
	public int advanceReserve(Map paramMap) throws Exception;
	public int deleteHistory(ReservationVO vo) throws Exception;
	public int deleteDataAfterTime(Map<String, Object> map) throws Exception;
	public int create(ReservationVO vo) throws Exception;
	public ReservationVO getReservationById(Integer rnumber) throws Exception;
	
	//회원 탈퇴를 위한 예매 내역 삭제
	public void withdrawalStatus(int uNumber) throws Exception;
		
	public void updateCancelState(@Param("rnumber") int rnumber) throws Exception;

	List<ReservationVO> viewingHistory(int uNumber) throws Exception;

}
