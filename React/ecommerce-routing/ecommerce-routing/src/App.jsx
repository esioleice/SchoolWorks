import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import "./App.css";
import Electronics from "./components/categories/Electronics";
import Clothing from "./components/categories/Clothing";
import Books from "./components/categories/Books";
import HomeAppliances from "./components/categories/HomeAppliances";
import Sports from "./components/categories/Sports";

function App() {
  return (
    <BrowserRouter>
      <div className="app-container">
        <aside className="sidebar">
          <h2 className="sidebar-title">🛍️ Shop by Category</h2>
          <nav>
            <ul className="category-list">
              <li><Link to="/category/electronics">📱 Electronics</Link></li>
              <li><Link to="/category/clothing">👕 Clothing</Link></li>
              <li><Link to="/category/books">📚 Books</Link></li>
              <li><Link to="/category/home-appliances">🏠 Home Appliances</Link></li>
              <li><Link to="/category/sports">⚽ Sports</Link></li>
            </ul>
          </nav>
        </aside>

        <main className="main-content">
          <Routes>
            <Route path="/" element={<h2 className="welcome">Welcome! Select a category to browse products.</h2>} />
            <Route path="/category/electronics" element={<Electronics />} />
            <Route path="/category/clothing" element={<Clothing />} />
            <Route path="/category/books" element={<Books />} />
            <Route path="/category/home-appliances" element={<HomeAppliances />} />
            <Route path="/category/sports" element={<Sports />} />
          </Routes>
        </main>
      </div>
    </BrowserRouter>
  );
}

export default App;
