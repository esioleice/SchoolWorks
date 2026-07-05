import ProductList from "../ProductList";

const clothingProducts = [
  {
    id: 6,
    name: "Levi's 501 Original Jeans",
    price: 3800,
    image: "https://images.unsplash.com/photo-1542272604-787c3835535d?w=300&h=200&fit=crop",
  },
  {
    id: 7,
    name: "Nike Dri-FIT Running Shirt",
    price: 1850,
    image: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=300&h=200&fit=crop",
  },
  {
    id: 8,
    name: "Adidas Ultraboost 22 Shoes",
    price: 9200,
    image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300&h=200&fit=crop",
  },
  {
    id: 9,
    name: "Uniqlo Fleece Jacket",
    price: 2490,
    image: "https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=300&h=200&fit=crop",
  },
  {
    id: 10,
    name: "Bench Cotton Polo Shirt",
    price: 699,
    image: "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=300&h=200&fit=crop",
  },
];

function Clothing() {
  return (
    <div>
      <div className="category-header">
        <h2>👕 Clothing</h2>
      </div>
      <ProductList products={clothingProducts} />
    </div>
  );
}

export default Clothing;
