package org.blueshit.csms.web.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.swing.tree.DefaultTreeCellEditor.EditorContainer;

import org.blueshit.csms.base.BaseAction;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.entity.Item;
import org.blueshit.csms.entity.Order;
import org.blueshit.csms.entity.OrderList;
import org.blueshit.csms.entity.Size;
import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.utils.QueryHelper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class ItemAction extends BaseAction<Item>{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -6633260811007754086L;
	
	private int pageNum=1;
	
	public Map<String, Object> jsonMap;
	
    private Long orderId;
	private int num;
	private String  item_number;
	private Long orderListId;
	
	
	
	
	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Long getOrderListId() {
		return orderListId;
	}

	public void setOrderListId(Long orderListId) {
		this.orderListId = orderListId;
	}

	public String getItem_number() {
		return item_number;
	}

	public void setItem_number(String item_number) {
		this.item_number = item_number;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	

	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	/**
	 * 列表.
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		new QueryHelper(Item.class, "i")
			.preparePageBean(itemService, pageNum);
		return "list";
	}
	/**
	 * 添加.
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		Item item = itemService.getByItemNumber(model.getItem_number());
		if(item!=null){
			ActionContext.getContext().put("message", "该货号已经存在！");
			return "message";
		}
		itemService.save(model);
		ActionContext.getContext().put("pageNum", pageNum);//维持页码.
		return "toList";
	}
	/**
	 * 删除.
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		itemService.delete(model.getId());
		ActionContext.getContext().put("pageNum", pageNum);//维持页码.
		return "toList";
	}
	/**
	 * 修改.
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception{
		Item  i= itemService.getByItemNumber(model.getItem_number());
		if(i!=null){
			ActionContext.getContext().put("message", "该货号已经存在！");
			return "message";
		}
		//找出原来的数据
		Item item = itemService.findById(model.getId());
		//设置新数据
		item.setBrand(model.getBrand());
		item.setColor_number(model.getColor_number());
		item.setFactory_price(model.getFactory_price());
		item.setItem_number(model.getItem_number());
		item.setLining(model.getLining());
		item.setRetail_price(model.getRetail_price());
		item.setShell(model.getShell());
		item.setSize(model.getSize());
		//更新到数据库
		itemService.save(item);
		ActionContext.getContext().put("pageNum", pageNum);//维持页码.
		return "toList";
	}
	/**
	 * 模糊查询.
	 * @return
	 * @throws Exception
	 */
	public String query() throws Exception{
		
		//准备分页数据,模糊查询.
		new QueryHelper(Item.class, "i")
			.addWhereCondition(model.getItem_number()!=null&&!"".equals(model.getItem_number()),"i.item_number like ?", "%"+model.getItem_number()+"%")
			.addWhereCondition(model.getBrand()!=null&&!"".equals(model.getBrand()),"i.brand like ?", "%"+model.getBrand()+"%")
			.addWhereCondition(model.getColor_number()!=null&&!"".equals(model.getColor_number()),"i.color_number like ?", "%"+model.getColor_number()+"%")
			.addWhereCondition(model.getSize()!=0,"i.size= ?", new Integer(model.getSize()))
			.preparePageBean(itemService, pageNum);
		//参数重传，解决分页链接问题.
		ActionContext.getContext().put("querystatue", "querystatue");
		ActionContext.getContext().put("item_number", model.getItem_number());
		ActionContext.getContext().put("brand", model.getBrand());
		ActionContext.getContext().put("color_number", model.getColor_number());
		ActionContext.getContext().put("size", model.getSize());
		return "list";
	}
	
	/**
	 * 修改的时候回显数据.
	 * @return
	 * @throws Exception
	 */
	public String getItemById() throws Exception{
		//获取数据
		Item item = itemService.findById(model.getId());
		Item i = new Item();
		i = item;
		i.setOrderLists(null);
		List<Color> colorList = colorService.findAll();
		List<Size> sizeList = sizeService.findAll();
		//封装到map
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("item", i);
		map.put("colors", colorList);
		map.put("sizes", sizeList);
		this.setJsonMap(map);
		return "getItemById";
	}
	
	
    /**
     * 添加货物   
     * @return
     */
	public String addItem(){
		System.out.println(orderId);
	    Order order=orderInService.findById(orderId);
	    String number=order.getNumber();
		Set<OrderList> orderLists=new HashSet<OrderList>();
	    OrderList orderList=new OrderList();
	    orderList.setOrder(order);
	    orderList.setNum(num);
	    orderList.setItem(model);
	    orderLists.add(orderList);
	    model.setOrderLists(orderLists);
	    itemService.save(model);
	    ActionContext.getContext().put("number", number);
		return "toDetailList";
		
	}
	
	
	
	 public String getJsonItemId() throws Exception{
		 	System.out.println(orderListId);
    	    OrderList orderList=orderListService.findById(orderListId);
    	    Map<String,Object> map = new HashMap<String, Object>();
    	    map.put("orderList", orderList);
    	    this.setJsonMap(map);
    	    return "getJsonById";
	 }
	     
	 
	 public String deleteItem(){
		 
		 Order order=orderInService.findById(orderId);
		 String number=order.getNumber();
		 ActionContext.getContext().put("number", number);
		 itemService.delete(model.getId());
		 ActionContext.getContext().put("pageNum", pageNum);
		 return "toDetailList";
		 
	 }
	 
	 public String getJsonById(){	 
		 OrderList orderList=itemService.getByOrderListId(orderListId);
		 Item item = new Item();
		 item = orderList.getItem();
		 item.setOrderLists(null);
		 orderList.setOrder(null);
		 orderList.setItem(item);
		 Map<String,Object> map = new HashMap<String, Object>();
  	     map.put("orderList", orderList);
  	     this.setJsonMap(map);
		 return "getItemById";
		 
	 }
	 
	 public String editItem(){
		 
		 System.out.println(orderId);
		 OrderList orderList=itemService.getByOrderListId(orderId);
		 Item item =orderList.getItem();
		 item.setItem_number(model.getItem_number());
		 item.setBrand(model.getBrand());
		 item.setSize(model.getSize());
		 item.setColor_number(model.getColor_number());
		 item.setFactory_price(model.getFactory_price());
		 item.setRetail_price(model.getRetail_price());
		 orderList.setNum(num);
		 Set<OrderList> orderLists=item.getOrderLists();
		 orderLists.add(orderList);
		 item.setOrderLists(orderLists);
		 itemService.save(item);
		 String number=orderList.getOrder().getNumber();
		 ActionContext.getContext().put("number", number);
		 return "toDetailList";
		 
	 }
	 
	 
	 
}
