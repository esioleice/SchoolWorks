function ProductItem({ product }) {
  return (
    <div className="product-card">
      <img src={product.image} alt={product.name} />
      <div className="product-info">
        <p className="product-name">{product.name}</p>
        <p className="product-price">₱{product.price.toLocaleString()}</p>
      </div>
    </div>
  );
}

export default ProductItem;
