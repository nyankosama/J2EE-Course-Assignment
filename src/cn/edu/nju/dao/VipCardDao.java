package cn.edu.nju.dao;

import cn.edu.nju.bean.VipCard;

/**
 * Created with IntelliJ IDEA.
 * User: nekosama
 * Date: 13-2-28
 * Time: 下午7:29
 * To change this template use File | Settings | File Templates.
 */
public interface VipCardDao {
    public void addVipCard(VipCard card);
    public void deleteVipCard(int id);
    public VipCard findVipCardByID(int id);
}
