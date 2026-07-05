import ProductList from "../ProductList";

const homeAppliancesProducts = [
  {
    id: 16,
    name: "Dyson V15 Vacuum Cleaner",
    price: 42000,
    image: "https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=300&h=200&fit=crop",
  },
  {
    id: 17,
    name: "Instant Pot Duo 7-in-1",
    price: 7500,
    image: "https://images.unsplash.com/photo-1585515320310-259814833e62?w=300&h=200&fit=crop",
  },
  {
    id: 18,
    name: "De'Longhi Espresso Machine",
    price: 18900,
    image: "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=300&h=200&fit=crop",
  },
  {
    id: 19,
    name: "Philips Air Purifier AC1215",
    price: 9800,
    image: "https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=300&h=200&fit=crop",
  },
  {
    id: 20,
    name: "Xiaomi Robot Vacuum S10+",
    price: 16500,
    image: "https://i02.appmifile.com/241_operatorx_operatorx_xm/26/09/2022/79a6bcb3f71f53c54d24d4b1d41d73bf.png",
  },
];

function HomeAppliances() {
  return (
    <div>
      <div className="category-header">
        <h2>🏠 Home Appliances</h2>
      </div>
      <ProductList products={homeAppliancesProducts} />
    </div>
  );
}

export default HomeAppliances;
