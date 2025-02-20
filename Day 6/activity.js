class cart{
    constructor(id, name, price, category){
        this.cart=[]
    }
    addItem(product){
        // for giving unique id u can use Date.now()
        //bydefault quantity will be 1
        cart.push({product, quantity:1})

    }
    removeItem(product){

    }
    updateItem(){
        //increase the quantity by 1

    }

    showTotalAmount(){

    }
}
const cart=new Cart();
cart.addItem(new Product(1,'pen', 10, 'Stationary'))