export class User {
  id:number;
  username: string;
  password: string;
  role: string;
  email: string;
  enabled: boolean;

  constructor(
    id:number=0,
  username: string='',
  password: string='',
  role: string ='',
  email: string='',
  enabled: boolean = true
  ){
    this.id = id;
    this.username=username;
    this.password=password;
    this.role=role;
    this.email=email;
    this.enabled = enabled;
  }
}
