package kr.co.bbs.dao;

import java.util.ArrayList;
import kr.co.bbs.dto.BDto;

public interface IDao {
	
	public ArrayList<BDto> list();
	public void upHit(final String bId);
	public BDto contentView(String strID);
	
	public int getNextBId();
	public void write(int bId, String bName, String bTitle, String bContent, int bGroup);
	
	public void modify(int bId, final String bName, final String bTitle, final String bContent);
	public BDto reply_view(int bId);

	public void replyShape(final String strGroup, final String strStep);
	public void reply(final String bName, final String bTitle, final String bContent,
			int bGroup, int bStep, int bIndent);	

	public void delete(final String bId);
	


	
}
