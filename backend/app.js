const express = require("express")
const {categories,items} = require("./data")

const app = express()
app.use(express.json())

app.get("/categories",(req,res)=>{    
   return res.status(200).json(
    categories
   );
},);

app.get("/items",(req,res)=>{    
    return res.status(200).json(
     items
    );
 },);
app.listen((3000),()=>{
    console.log("http://localhost:3000/");
});