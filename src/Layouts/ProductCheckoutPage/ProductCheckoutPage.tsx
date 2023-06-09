import { useState } from "react";
import ProductModel from "../../Models/ProductModel";

export const ProductCheckoutPage=()=>{
    const [product,setProduct]=useState<ProductModel>();
    const [isLoadingProduct,setIsLoadingProduct]=useState(true);
    const [httpError,setHttpError]=useState(null);

    const productId= (window.location.pathname).split('/')[2];
    
    return(
        <div>

        </div>
    );
}