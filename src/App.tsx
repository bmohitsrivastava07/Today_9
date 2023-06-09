import React from 'react';

import './App.css';
import { Footer } from './Layouts/NavbarAndFooter/Footer';
import { Navbar } from './Layouts/NavbarAndFooter/Navbar';
import { HomePage } from './Layouts/HomePage/HomePage';
import { SearchProductsPage } from './Layouts/SearchProductPage/SearchProductsPage';
import {Route,Routes, Navigate} from 'react-router-dom';
import { ProductCheckoutPage } from './Layouts/ProductCheckoutPage/ProductCheckoutPage';

function App() {
  return (
    <div className='d-flex flex-column min-vh-100'>
    <Navbar/>
    <div className='flex-grow-1'>
    <Routes>
    <Route path='/' element={<Navigate to='/home'/>}>
    </Route>
    <Route path='/home'>
      <HomePage/>
    </Route>
   <Route path='/search'>
   <SearchProductsPage/>
   </Route>
   <Route path='/checkout/:productId'>
    <ProductCheckoutPage/>
   </Route>
   </Routes>
   </div>
    <Footer/>
    </div>
  );
}

export default App;
