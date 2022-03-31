const express = require('express');
const mysql = require('mysql2')
const cors = require('cors');
const bodyParser = require('body-parser');
const { urlencoded } = require('body-parser');
const app = express();
const multer = require('multer')

const dbConnection = mysql.createPool({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'cv'
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({extended : true}));


    const fileStorage = multer.diskStorage({
        destination : (req, file, cb) => {
            cb(null,"./images");
        },
    filename : (req, file, cb) =>{
        cb(null, file.originalname);
    },
    });

    const uploadingFiles = multer({storage: fileStorage});

    //to save name and email to db
    app.post('/api/namestest',uploadingFiles.single("file"),(req,res) => {

    const userName = req.body.name;
    const userEmail = req.body.email;
    const fileLocation = req.file;
    console.log(userName, userEmail);
    console.log(fileLocation);
try{
    const sqlInsert = "INSERT INTO user_details (Name, Email, document_link) VALUES (?,?,?)";
    dbConnection.query(sqlInsert, [userName, userEmail, fileLocation.path], (err,result) => {
        console.log('done');
    });

    return res.status(200);
} catch (err) {
  return res.status(500);
}
    });

    // app.post("/api/uploadfile", uploadingFiles.single("file"), (req, res) => {
    //     console.log(req.file);
    //     res.send("cv upload success");
    // });

app.listen (4000, ()=>{
console.log('running 4000')

})