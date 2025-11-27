import { LightningElement, wire } from 'lwc';
import getLeads from '@salesforce/apex/LeadController.getLeads';

export default class LeadDashboard extends LightningElement {
    @wire(getLeads) leads;
}