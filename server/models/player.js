const mongoose = require('mongoose');

const playerSchema = new mongoose.Schema({
    nickname: {
        type: String,
        //required: true,
        trim: true
    },
    socketID: {
        type: String,
    },
    points: {
        type: Number,
        default: 0
    },
    playerType: {
        type: String,
        required: true,
    }
});

module.exports = playerSchema;