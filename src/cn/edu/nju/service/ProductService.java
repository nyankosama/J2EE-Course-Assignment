package cn.edu.nju.service;

import cn.edu.nju.bean.Product;
import cn.edu.nju.bean.User;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: nekosama
 * Date: 13-2-28
 * Time: 下午5:53
 * To change this template use File | Settings | File Templates.
 */
public interface ProductService {
    public void addProduct(Product product);
    public void deleteProductByID(int id);
    public Product findByName(String name);
    public Product findByID(int id);

    //店员============
    /**
     * 获得当前可销售的产品
      * @return
     */
    public Set<Product> getAvailableProduct(int store_id);
    public void sellProduct(Product product,User user,int amount);


}
