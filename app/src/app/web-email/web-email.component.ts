import { HttpErrorResponse } from '@angular/common/http';
import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';
import { MainService } from '../main.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';


declare var jQuery: any;

@Component({
    selector: 'app-web-email',
    templateUrl: './web-email.component.html',
    styleUrls: ['./web-email.component.css']
})
export class WebEmailComponent implements OnInit{

  @ViewChild('deleteEmailModal') deleteEmailModal: ElementRef;
  @ViewChild('editEmailModal') editEmailModal: ElementRef;

  formEmail: FormGroup;
  subjectEmail: any;
  idEmailDelete: any;
  editEmail = false;
  loadSpinner = false;
  emails = [];

  constructor(
    private formBuilder: FormBuilder,
    private mainService: MainService
  ) { }

  ngOnInit(): void {
    this.formEmail = this.formBuilder.group({
      id: [null, [Validators.required]],
      subjectEmail: [null, [Validators.required]],
      message: [null, [Validators.required]],
      recipients: [null, [Validators.required]]
    });
    this.getEmails();
  }

  getEmails(){

    this.loadSpinner = true;
    this.mainService.getEmails().subscribe(res => {
      console.log(res);
      if (res.response === 'ok') {
        for (let i = 0; i < res.emails.length; i++) {
          this.emails.push({
            id: res.emails[i].id,
            message: res.emails[i].message_email,
            subject: res.emails[i].subject_email,
            emailaddress: res.emails[i].emailaddress[0].email_address,
            date: res.emails[i].updated_at
          });
        }
      }else{
        console.log('Algum erro a tratar!', res);
      }
      this.loadSpinner = false;
    },
    (errorResponse: HttpErrorResponse) => {
      const error = errorResponse.error;
      console.log('Algum erro a tratar!', error);
      this.loadSpinner = false;

    });
  }

  saveEmail(){

    this.loadSpinner = true;
    this.mainService.saveEmail(this.formEmail.value).subscribe(res => {
      console.log(res);
      if (res.response === 'ok') {
       window.location.reload();
      }else{
        console.log('Algum erro a tratar!', res);
      }
    },
    (errorResponse: HttpErrorResponse) => {
      const error = errorResponse.error;
      console.log('Algum erro a tratar!', error);
      this.loadSpinner = false;

    });
  }

  cancelEmail(){
    this.formEmail.reset();
    this.editEmail = false;
  }

  getEmailsBySearch(characters){
    if (characters === '' || characters === null){
      this.getEmails();
      return;
    }
    this.emails =[];
    this.mainService.getEmailsBySearch(characters).subscribe(res => {

      console.log(res);
      if (res.response === 'ok' && res.emails != null) {
        this.emails =[];
        for (let i = 0; i < res.emails.length; i++) {
          this.emails.push({
            id: res.emails[i].id,
            message: res.emails[i].message_email,
            subject: res.emails[i].subject_email,
            emailaddress: res.emails[i].emailaddress[0].email_address,
            date: res.emails[i].updated_at
          });
        }
      }else{
        console.log('Algum erro a tratar!', res);
      }
    },
    (errorResponse: HttpErrorResponse) => {
      const error = errorResponse.error;
      console.log('Algum erro a tratar!', error);

    });
  }

  modalDeleteEmail(email) {
    this.subjectEmail = email.subject;
    this.idEmailDelete = email.id;
    jQuery(this.deleteEmailModal.nativeElement).modal('show');
  }

  modalEditEmail(email){

    console.log(email);
    this.formEmail.controls.id.setValue(email.id);
    this.formEmail.controls.message.setValue(email.message);
    this.formEmail.controls.subjectEmail.setValue(email.subject);
    this.formEmail.controls.recipients.setValue(email.emailaddress);

    this.editEmail = true;
    jQuery(this.editEmailModal.nativeElement).modal('show');
  }

  deleteEmail(){

    this.mainService.deleteEmail(this.idEmailDelete).subscribe(res => {
      console.log(res);
      if (res.response === 'ok'){
        window.location.reload();
      }else{
        console.log('Algum erro a tratar!', res);
      }
    },
    (errorResponse: HttpErrorResponse) => {
      const error = errorResponse.error;
      console.log('Algum erro a tratar!', error);

    });
  }
}

