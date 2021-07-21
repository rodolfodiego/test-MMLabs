import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { WebEmailComponent } from './web-email/web-email.component';

const routes: Routes = [

  {path: 'webemail', component: WebEmailComponent},
  {path: '', redirectTo: 'webemail', pathMatch: 'full'},
  {path: '**', component: PageNotFoundComponent}
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
