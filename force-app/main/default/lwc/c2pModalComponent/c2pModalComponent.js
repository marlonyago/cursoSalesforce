import { LightningElement } from 'lwc';

export default class C2pModalComponent extends LightningElement {

    closeHandler(){ 
        const myEvent = new CustomEvent('close',{
            detail:"Esse modal foi fechado com sucesso!!!"
        })
        this.dispatchEvent(myEvent)
    }
}