package testinho.dao;

import java.util.*;

import testinho.model.Market;
import testinho.model.Product;
import testinho.model.Stack;

public class ProductRepositoryInMemory implements ProductRepository {
	
	private static final Map<Integer, Product> myMapProduct = new HashMap<>();
	private static final Map<Integer, Stack> myMapStack = new HashMap<>();
	private static final Map<Integer, Market> myMapMarket = new HashMap<>();

	private static final Product p1 = new Product(1, "Gubee Frete", "Gubee Frete Zero");
	private static final Product p2 = new Product(2, "Gubee Seguro", "Gubee Seguranša");
	private static final Product p3 = new Product(3, "Gubee Dev", "Gubee Dev");

	private static final Stack s1 = new Stack(1, "Java 10");
	private static final Stack s2 = new Stack(2, "Kotlin");
	private static final Stack s3 = new Stack(3, "Kafka");

	private static final Market m1 = new Market(1, "Ecommerce");
	private static final Market m2 = new Market(2, "ERP");
	private static final Market m3 = new Market(3, "Loja Fisica");

	static {

		myMapProduct.put(1,p1);
		myMapProduct.put(2,p2);
		myMapProduct.put(3,p3);

		myMapStack.put(1,s1);
		myMapStack.put(2,s2);
		myMapStack.put(3,s3);

		myMapMarket.put(1,m1);
		myMapMarket.put(2,m2);
		myMapMarket.put(3,m3);
	}

	@Override
	public Set<Product> listProductByMarketAndStack(String sqlMarket, String sqlStack) {
		return new LinkedHashSet<>(myMapProduct.values());
	}
}
