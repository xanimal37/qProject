import { Component } from '@angular/core';
import { User } from 'src/app/models/user';
import { AuthService } from './../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  constructor(private auth: AuthService,
    private router: Router){
  }

  loginUser : User = new User();
  login(user: User){
    console.log('Loggin in user:');
    console.log(user);

    this.auth.login(user.username, user.password).subscribe({
        next: (loggedInUser) => {
            this.router.navigateByUrl('/todo');
          },
        error: (problem) => {
            console.error('LoginComponent.loginUser(): Error logging in user:');
            console.error(problem);
          }
        });
      }
}
