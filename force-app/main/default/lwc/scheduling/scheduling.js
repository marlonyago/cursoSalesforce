import { LightningElement } from 'lwc';

export default class Scheduling extends LightningElement {



    calendarData = [
         {
            date: "2021-05-31",
            hours: [
                {
                    startTime:"08:00",
                    endTime: "12:30"
                },
                {
                    startTime:"09:00",
                    endTime: "11:30"
                },
                {
                    startTime:"10:00",
                    endTime: "11:30"
                }
            ]
        },
        {
            date: "2021-06-01",
            hours: [
                {
                    startTime:"08:00",
                    endTime: "12:30"
                }
            ]
        },
        {
            date: "2021-06-02",
            hours: [
                {
                    startTime:"08:00",
                    endTime: "12:30"
                },
                {
                    startTime:"09:00",
                    endTime: "11:30"
                },
                {
                    startTime:"10:00",
                    endTime: "11:30"
                }
            ]
        }
    ];


}