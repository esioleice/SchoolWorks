import ProductList from "../ProductList";

const electronicsProducts = [
  {
    id: 1,
    name: "Samsung Galaxy S24",
    price: 54999,
    image: "https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=300&h=200&fit=crop",
  },
  {
    id: 2,
    name: "Apple MacBook Air M2",
    price: 89999,
    image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=300&h=200&fit=crop",
  },
  {
    id: 3,
    name: "Sony WH-1000XM5 Headphones",
    price: 22500,
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300&h=200&fit=crop",
  },
  {
    id: 4,
    name: "iPad Pro 11-inch",
    price: 63000,
    image: "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=300&h=200&fit=crop",
  },
  {
    id: 5,
    name: "Logitech MX Master 3 Mouse",
    price: 6500,
    image: "https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=300&h=200&fit=crop",
  },
];

function Electronics() {
  return (
    <div>
      <div className="category-header">
        <h2>📱 Electronics</h2>
      </div>
      <ProductList products={electronicsProducts} />
    </div>
  );
}

export default Electronics;
