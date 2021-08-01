import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
    myQuestions=[
        {
            id:"Question1",
            question:"Which one of the following is not a tamplete loop?",
            answers:{
                a:"aaaaa",
                b:"bbbbb",
                c:"ccccc"
            },
            correctAnswer:"a"
        },
        {
            id:"Question2",
            question:"Which of the file is invalid in LWC component folder?",
            answers:{
                a:"dddddd",
                b:"eeeeee",
                c:"fffff"
            },
            correctAnswer:"b"
        },
        {
            id:"Question3",
            question:"Which one of the following is not a directive?",
            answers:{
                a:"ggggggg",
                b:"hhhhhh",
                c:"iiiiiii"
            },
            correctAnswer:"c"
        },
    ];

    selected={}
    isSubmited = false;
    correctAnswer = 0;

    changeHandler(event){
        window.console.log("Name "+ event.target.name);
        window.console.log("Value "+ event.target.value);
        const {name, value} = event.target;
        this.selected = {...this.selected, [name]:value}
        
    }

    get allNotSelected(){
        return !(Object.keys(this.selected).length === this.myQuestions.length)
    }

    get isScoredFull(){
        return `slds-text-heading_large ${this.myQuestions.length === this.correctAnswer?
            'slds-text-color_success' : 'slds-text-color_error'}`;
    }

    submitHandler(event){
        event.preventDefault();
        let corret = this.myQuestions.filter(item=>this.selected[item.id] === item.correctAnswer);
        this.correctAnswer = corret.length;
        this.isSubmited =  true;
        window.console.log("this.correctAnswer "+ this.correctAnswer);
    }

    resetHandler(event){
        this.selected = {};
        this.correctAnswer=0;
        this.isSubmited =  false;
    }
}