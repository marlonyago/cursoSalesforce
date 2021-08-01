import { LightningElement } from 'lwc';
import singninTemplate from './singninTemplate.html';
import singnupTemplate from './singuoTemplate.html';
import renderTemplate from './renderMethod.html';
export default class RenderMethod extends LightningElement {

    selectedBtn = '';

    render(){
        return this.selectedBtn === 'SingUp' ? singnupTemplate :
                    this.selectedBtn === 'SingIn' ? singninTemplate :
                    renderTemplate;
        //return singninTemplate;
    }

    handlerClick(event){
        this.selectedBtn = event.target.label;
    }

}