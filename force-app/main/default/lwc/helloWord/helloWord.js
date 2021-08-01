import { LightningElement, track } from 'lwc';

export default class HelloWord extends LightningElement {
    title




    @track address={
        city: 'Melbourne',
        postcode:'30008',
        country:'Australia'
    }


    changeHandler(event){
        this.title =  event.target.value;
    }


    trackHandler(event){
        this.address.city = event.target.value;
    }

    users = ["Jhon","Marcio","Fabio"];
    num1 = 10;
    num2 = 10;
    
    get firstUser(){
        return this.users[0];
    }

    
}