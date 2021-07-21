import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class MainService {


  constructor(private http: HttpClient) { }


  getEmails(): Observable<any> {
    return this.http.get<any>(`${environment.api_url}/getemails`);
  }

  saveEmail(newEmail): Observable<any> {
    return this.http.post<any>(`${environment.api_url}/saveemail`, newEmail);
  }

  getEmailsBySearch(character): Observable<any> {
    const request = {
      characters: character,
    }
    return this.http.post<any>(`${environment.api_url}/getemailssearch`, request);
  }

  deleteEmail(idEmail): Observable<any> {
    const request = {
      idemail: idEmail,
    }
    return this.http.post<any>(`${environment.api_url}/deleteemail`, request);
  }


}
