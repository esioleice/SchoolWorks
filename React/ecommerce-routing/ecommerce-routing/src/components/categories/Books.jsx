import ProductList from "../ProductList";

const booksProducts = [
  {
    id: 11,
    name: "Atomic Habits – James Clear",
    price: 750,
    image: "https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=300&h=200&fit=crop",
  },
  {
    id: 12,
    name: "The Pragmatic Programmer",
    price: 1200,
    image: "https://images.unsplash.com/photo-1532012197267-da84d127e765?w=300&h=200&fit=crop",
  },
  {
    id: 13,
    name: "Dune – Frank Herbert",
    price: 680,
    image: "https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=300&h=200&fit=crop",
  },
  {
    id: 14,
    name: "Rich Dad Poor Dad",
    price: 520,
    image: "https://images.unsplash.com/photo-1512820790803-83ca734da794?w=300&h=200&fit=crop",
  },
  {
    id: 15,
    name: "Clean Code – Robert C. Martin",
    price: 1100,
    image: "https://images.unsplash.com/photo-1589998059171-988d887df646?w=300&h=200&fit=crop",
  },
];

function Books() {
  return (
    <div>
      <div className="category-header">
        <h2>📚 Books</h2>
      </div>
      <ProductList products={booksProducts} />
    </div>
  );
}

export default Books;
