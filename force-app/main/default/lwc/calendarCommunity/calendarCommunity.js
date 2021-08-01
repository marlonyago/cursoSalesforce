import { LightningElement, track, api  } from 'lwc';
import { loadStyle, loadScript } from 'lightning/platformResourceLoader';
import calendarAssets from '@salesforce/resourceUrl/calendarAssets';
export default class CalendarCommunity extends LightningElement {

    @api installer;
    @api calendarDetails;

    loadScripts = false;
    @track calendar = [];
    months = ["Jan","Fev","Mar","Abr","Maio","Jun","Jul","Ago","Set","Out","Nov","Dez"];
    week = ["Dom","Seg","Ter","Qua","Qui","Sex","Sab"];

    connectedCallback(){
        console.log('connectedCallback');
        let date = new Date();
        let dateStart = date.getDate();
        const conteiner = this.template.querySelector(".calendar");

        const lastDayIndex = new Date( date.getFullYear(), date.getMonth() + 1, 0 ).getDay();          
        const lastDay = new Date( date.getFullYear(), date.getMonth() + 1, 0 ).getDate();   
        const nextMonth =new Date(date.getFullYear(), date.getMonth() + 1, 1);
        const endNextMonth =new Date( date.getFullYear(), date.getMonth() + 2, 0);     
        
        for (let i = dateStart; i <= lastDay; i++) {
            const currentDate = new Date(date.getFullYear(),date.getMonth(), i );  
              let day = {};
              day.id = this.formatId(currentDate);
              day.month = this.months[currentDate.getMonth()];
              day.day = currentDate.getDate();
              day.week = this.week[currentDate.getDay()];
              day.weekNumber = currentDate.getDay();
              //this.calendar.push(day);
        }

        for (let i = 1; i <= endNextMonth.getDate(); i++) {
            const currentDate = new Date(nextMonth.getFullYear(),nextMonth.getMonth(), i);
            let day = {};
            day.id = this.formatId(currentDate);
            day.month = this.months[currentDate.getMonth()];
            day.day = currentDate.getDate();
            day.week = this.week[currentDate.getDay()];
            day.weekNumber = currentDate.getDay();
            //this.calendar.push(day);
        }

        console.log(this.calendar); 
    }

    formatId(currentDate){
        let calMonth = (currentDate.getMonth() + 1);
        let year = currentDate.getFullYear();
        let day = currentDate.getDate().toString().length == 1 ? '0'+currentDate.getDate() : currentDate.getDate();  
        let month = calMonth.toString().length == 1 ? '0'+calMonth : calMonth;  
        return year+'-'+month+'-'+day;
    }

    innerHTML(result){
        let bodyCalendar = this.template.querySelector(".body-calendar");
        let days = document.createElement("div");
        let time = document.createElement("div");
        let time_div = document.createElement("div");
        let time_a = document.createElement("a");
        time_a.setAttribute("id", "08:00");
        time.classList.add("time");
        days.classList.add("days");

        let elemet_one = '<div class="day" id="'+result.id+'">';
        elemet_one += '<div class="week">'+result.week+'</div>';
        elemet_one += '<div class="day-week">'+result.day+' '+result.month+'</div>';
        elemet_one += '</div>';


        let object ={}
        object.date = result.id;
        object.time = '08:00 - 12:00';

        time_a.onclick = () => {
            this.handlerClick(object);        
        }


        time_a.innerHTML = '08:00<br/>12:00';
        time_div.appendChild(time_a);
        time.appendChild(time_div);
        days.innerHTML = elemet_one;
        days.appendChild(time);        
        
        bodyCalendar.appendChild(days);  
    
    }      

    renderedCallback(){
        if (this.loadScripts) {
            return;
        }
        this.loadScripts = true;
        
        for(let i = 0; i <=this.calendarDetails.length; i++){
            if(this.calendarDetails[i] != undefined){
                this.creatCalendarArray(this.calendarDetails[i]);
            }
        }     

        loadScript(this, calendarAssets+'/calendar/js/jquery-3.6.0.min.js').then(() => {
            loadScript(this, calendarAssets+'/calendar/js/slick.min.js').then(() => {
                loadStyle(this, calendarAssets+'/calendar/css/slick.css').then(() => {
                    this.creatCalendar(this.calendar);
                    this.initializeChart();
                }).catch(error => { 
                     console.log('Erro em carregar Slick CSS');
                     console.log(error);
                });
            }).catch(error => { 
                 console.log('Erro em carregar Slick'); 
                 console.log(error);
            })
        }).catch(error => { 
             console.log('Erro em carregar Jquery');
             console.log(error);
        });

    }

    initializeChart(){
        let nextArrow = '<button class="arrow next"><span class="slds-icon_container slds-icon-utility-announcement" title="Description of icon when needed"><svg class="slds-icon slds-icon-text-default" aria-hidden="true"><use xlink:href="/_slds/icons/utility-sprite/svg/symbols.svg#chevronright"></use></svg><span class="slds-assistive-text">Proximo</span></span></button>';
        let prevArrow = '<button class="arrow prev"><span class="slds-icon_container slds-icon-utility-announcement" title="Description of icon when needed"><svg class="slds-icon slds-icon-text-default" aria-hidden="true"><use xlink:href="/_slds/icons/utility-sprite/svg/symbols.svg#chevronleft"></use></svg><span class="slds-assistive-text">Proximo</span></span></button>';
        $(this.template.querySelector('.body-calendar')).slick({
            dots: false,
            infinite: false,
            speed: 300,
            slidesToShow: 5,
            slidesToScroll: 2,
            arrows:true,
            prevArrow: prevArrow,
            nextArrow: nextArrow
        });
    }

    creatCalendarArray(calendarDetails){
        console.log('calendarDetails');
        let currentDate = new Date(calendarDetails.date+"T00:00:00");
        let day = {};
        day.hours = calendarDetails.hours;
        day.id = calendarDetails.date;
        day.month = this.months[currentDate.getMonth()];
        day.day = currentDate.getDate();
        day.week = this.week[currentDate.getDay()];
        day.weekNumber = currentDate.getDay();        
        this.calendar.push(day);
    }

    creatCalendar(calendar){
        for(let i = 0; i <=calendar.length; i++){
            if(calendar[i] != undefined){
                this.insertCalendar(calendar[i]);  
            }
        }
    }

    insertCalendar(result){
        let bodyCalendar = this.template.querySelector(".body-calendar");
        let days = document.createElement("div");
        let time = document.createElement("div");
        let time_div = document.createElement("div");

        time.classList.add("time");
        days.classList.add("days");

        let elemet_one = '<div class="day" id="'+result.id+'">';
        elemet_one += '<div class="week">'+result.week+'</div>';
        elemet_one += '<div class="day-week">'+result.day+' '+result.month+'</div>';
        elemet_one += '</div>';



        for(let i = 0; i <=result.hours.length; i++){
            if(result.hours[i] != undefined){
                let endTime = result.hours[i].endTime;
                let startTime = result.hours[i].startTime;

                let time_a = document.createElement("a");
                time_a.setAttribute("id", "08:00");
                let object ={}
                object.date = result.id;
                object.time = '08:00 - 12:00';
        
                time_a.onclick = () => {
                    this.handlerClick(object);        
                }

                time_a.innerHTML = startTime+'<br/>'+endTime;
                time_div.appendChild(time_a);
            }
        }
        
        
        time.appendChild(time_div);
        days.innerHTML = elemet_one;
        days.appendChild(time);        
        
        bodyCalendar.appendChild(days);   
    }  
    
    
    
    handlerClick(result){
        alert('deu boa');
        console.log(result);
    }

}