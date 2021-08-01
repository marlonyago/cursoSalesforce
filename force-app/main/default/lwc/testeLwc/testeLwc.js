import { api, LightningElement, track } from 'lwc';

export default class TesteLwc extends LightningElement {
    @api recordId;
    @track message;

    connectedCallback(){
        window.console.log(this.recordId);
        this.message = 'Olá Mundo';
    }


    handlerClick(event){
        this.message = 'Você clicou no botão';
    }
}