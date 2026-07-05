import ProductList from "../ProductList";

const sportsProducts = [
  {
    id: 21,
    name: "Wilson Pro Staff Tennis Racket",
    price: 12500,
    image: "https://images.unsplash.com/photo-1554068865-24cecd4e34b8?w=300&h=200&fit=crop",
  },
  {
    id: 22,
    name: "Spalding NBA Basketball",
    price: 2800,
    image: "https://andscape.com/wp-content/uploads/2021/07/74876E_LS_4-e1626124022792.jpg",
  },
  {
    id: 23,
    name: "Decathlon Yoga Mat 8mm",
    price: 1350,
    image: "https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?w=300&h=200&fit=crop",
  },
  {
    id: 24,
    name: "Mikasa Volleyball V200W",
    price: 3600,
    image: "https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?w=300&h=200&fit=crop",
  },
  {
    id: 25,
    name: "Speedo Fastskin Swimsuit",
    price: 5400,
    image: "https://images.unsplash.com/photo-1530549387789-4c1017266635?w=300&h=200&fit=crop",
  },
];

function Sports() {
  return (
    <div>
      <div className="category-header">
        <h2>⚽ Sports</h2>
      </div>
      <ProductList products={sportsProducts} />
    </div>
  );
}

export default Sports;
