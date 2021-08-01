import { LightningElement } from 'lwc';

export default class HelloConditionRendering extends LightningElement {
    isVisible = false;

    handleClick(event){
        this.isVisible = true;
    }



}