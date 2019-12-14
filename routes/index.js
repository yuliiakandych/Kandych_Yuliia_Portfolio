const express = require('express');
const router = express.Router();

const connect = require('../utils/sql')

router.get('/', (req,res)=>{
    console.log("at the main route");
    connect.getConnection((err, connection) => {
      if (err){
        return 
        console.log(error.message);
    }

   
   let query = "Select * from tbl_lightbox";
   connect.query(query, (err,result)=>{
     connection.release();
       console.log("getting data")
       if (err){
           throw err;
           console.log(err);
       }
       //console.log("aaaa"+result);
       res.render('home', {portfolio: result});
   });
  });
})

router.get('/users/:id', (req,res) =>{
    console.log("popingup");
    console.log(req.params.id)
    let query = `Select * from tbl_lightbox where ID=${req.params.id} `;
   connect.query(query, (err,result)=>{
       console.log("getting data")
       if (err){
           throw err;
           console.log(err);
       }
       //console.log(result[0])
       res.json(result[0]);
       

})
})


module.exports = router;