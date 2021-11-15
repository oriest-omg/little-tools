import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ori-Tool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ori-Tool'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValueTime = '3';
  String dropdownValueServer = 'FR';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center
        (
        child:SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(children: [
              const Text("Username :",style: TextStyle(
                  fontSize: 20.0
              )),
              SizedBox(
                width: 300.0,
                child: Form(
                    child: TextFormField(
                  style: const TextStyle(
                       fontSize: 20.0),
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )),
              ),
            ]),
              padding(),
              Row(children: [
                const Text("password :",style: TextStyle(
                  fontSize: 20.0
                ),),
                SizedBox(
                  width: 300.0,
                  child: Form(
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 20.0),
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      )),
                ),
              ]),
              padding(),
              Row(children: [
                const Text("Server :",style: TextStyle(
                    fontSize: 20.0
                )),
                SizedBox(
                  width: 50.0,
                  child: DropdownButton<String>(
                    value: dropdownValueServer,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple,fontSize: 20.0),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueServer = newValue!;
                      });
                    },
                    items: <String>['FR','TR']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ),
              ]),
              padding(),
              const Text("nothing", style: TextStyle(fontSize: 20.0),),
              padding(),
              Row(children: [
                const Text("Id User :",style: TextStyle(
                    fontSize: 20.0
                )),
                SizedBox(
                  width: 300.0,
                  child: Form(
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 20.0),
                        decoration: const InputDecoration(
                          hintText: 'Enter your id',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      )),
                ),
              ]),
              padding(),
              Row(children: [
                const Text("Time (min) :",style: TextStyle(
                    fontSize: 20.0
                )),
                SizedBox(
                  width: 50.0,
                  child:  DropdownButton<String>(
                    value: dropdownValueTime,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple,fontSize: 20.0),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueTime = newValue!;
                      });
                    },
                    items: <String>['3','16','31','61']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ),
              ]),
              padding(),
              const Text("0", style: TextStyle(fontSize: 20.0),),
              padding(),
                TextButton(onPressed: ()=>{}, child: const Text("SEND",style: TextStyle(
                    fontSize: 20.0
                )))
          ])),
    ));
  }
  padding(){
    return Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0));
  }
}

// public partial class Form1 : Form
// {
// public string original_token;
// public string original_refresh_token;
// public string original_profileId;
// public string finalToken;
// public string FinalToken = "";
// public string original_bot_token = "";
// public string bot_refresh_token = "";
// public string bot_final_token = "";
// public string user = "";
// public string pass = "";
// public string guh = "";
// int i = 0;
// int j = 0;
// int f = 0;
// public string oto = "";
// public string ProfileId;
// private string server = "";
//
//
// public Form1()
// {
//   InitializeComponent();
// }
//
// private void button1_Click(object sender, EventArgs e)
// {
//   cmbServer.Invoke(new MethodInvoker(delegate
//       {
//       server = cmbServer.Text;
//       }));
//   List<string> sentences = new List<string>((IEnumerable<string>)System.IO.File.ReadAllLines("proxies.txt"));
// int len = sentences.Count;
// Random rand = new Random((int)DateTime.Now.Ticks);
// RestClient client2 = new RestClient("https://eu.mspapis.com/loginidentity/connect/token");
// RestRequest request2 = new RestRequest();
// WebProxy proxy22 = new WebProxy(sentences[rand.Next(0, len)]);
// request2.RequestFormat = DataFormat.Json;
// request2.AddHeader("X-Forwarded-for", sentences[rand.Next(0, len)]);
// IRestRequest r2 = request2.AddObject((object)new
//   {
//   client_id = "unity.client",
//   client_secret = "secret",
//   grant_type = "password",
//   scope = "openid nebula offline_access",
//   username = (server + "|" + txtUserName.Text),
//   password = txtPassword.Text,
//   acr_values = "gameId:j68d"
//   });
//   IRestResponse response2 = client2.Execute(r2, Method.POST);
//   this.original_bot_token = (string)JObject.Parse(response2.Content)["access_token"];
//   this.bot_refresh_token = (string)JObject.Parse(response2.Content)["refresh_token"];
//   if (response2.Content.Contains("access_token"))
//   {
//   Console.WriteLine("[!] Bot Connected.");
//   lblConnection.Text = "Connecter";
//   lblConnection.ForeColor = Color.Green;
//   string token2 = this.original_bot_token;
//   JwtSecurityTokenHandler handler2 = new JwtSecurityTokenHandler();
//   JwtSecurityToken jwtSecurityToken2 = handler2.ReadJwtToken(token2.ToString());
//   string sub2 = jwtSecurityToken2.Subject;
//   string sURL2 = "https://eu.mspapis.com/profileidentity/v1/logins/" + sub2 + "/profiles?&pageSize=100&page=1&filter=region:FR";
//   WebProxy proxy2 = new WebProxy(sentences[rand.Next(0, len)]);
//   WebRequest requestt2 = WebRequest.Create(sURL2);
//   requestt2.Headers.Add("X-Forwarded-for", sentences[rand.Next(0, len)]);
//   requestt2.Headers.Add("Authorization", "Bearer " + token2);
//   WebResponse responsee2 = requestt2.GetResponse();
//   Stream dataStream2 = responsee2.GetResponseStream();
//   StreamReader reader2 = new StreamReader(dataStream2);
//   string rt2 = reader2.ReadToEnd();
//   string jsonResult2 = rt2.TrimStart('[').TrimEnd(']');
//   JToken rttt2 = JObject.Parse(jsonResult2)["id"];
//   JToken idd2 = rttt2;
//   string postData2 = "grant_type=refresh_token";
//   postData2 = postData2 + "&refresh_token=" + this.bot_refresh_token;
//   postData2 = postData2 + "&acr_values=gameId:j68d profileId:" + idd2?.ToString();
//   WebProxy proxy3 = new WebProxy(sentences[rand.Next(0, len)]);
//   HttpWebRequest request3 = (HttpWebRequest)WebRequest.Create("https://eu.mspapis.com/loginidentity/connect/token");
//   request3.Headers.Add("authorization", "Basic dW5pdHkuY2xpZW50OnNlY3JldA==");
//   request3.Headers.Add("X-Forwarded-for", sentences[rand.Next(0, len)]);
//   byte[] dataa3 = Encoding.ASCII.GetBytes(postData2);
//   request3.Method = "POST";
//   request3.ContentType = "application/x-www-form-urlencoded";
//   request3.ContentLength = (long)dataa3.Length;
//   using (Stream stream3 = request3.GetRequestStream())
//   stream3.Write(dataa3, 0, dataa3.Length);
//   HttpWebResponse response3 = (HttpWebResponse)request3.GetResponse();
//   string responseString3 = new StreamReader(response3.GetResponseStream()).ReadToEnd();
//   string fifi3 = (string)JObject.Parse(responseString3)["access_token"];
//   HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create("https://eu.mspapis.com/profilegreetings/v1/profiles/" + idd2 + "/games/j68d/greetings");
//   httpWebRequest.ContentType = "application/json";
//   httpWebRequest.Method = "POST";
//   httpWebRequest.Headers.Add("X-Forwarded-for", sentences[rand.Next(0, len)]);
//   httpWebRequest.Headers.Add("authorization", "Bearer " + fifi3);
//   using (StreamWriter streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
//   {
//   string jsonN = new JavaScriptSerializer().Serialize((object)new
//   {
//   greetingType = "autograph",
//   receiverProfileId = txtIDplayer.Text,
//   //Mr chauve :b44a89e73709492cb8f9616d1557fb99
//   //oriest(2) :FR % 7C38759169
//   compatibilityMode = "Nebula",
//   useAltCost = false
//   });
//   streamWriter.Write(jsonN);
//   jsonN = (string)null;
//   }
//   HttpWebResponse httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
//   int time = 0;
//   cboTime.Invoke(new MethodInvoker(delegate
//   {
//   time = int.Parse(cboTime.Text);
//   }));
//
//   temps(time);
//   i += 1;
//   lblOto.Invoke(new MethodInvoker(delegate
//   {
//   lblOto.Text = i.ToString();
//   }));
//   }
//   else
//   {
//   MessageBox.Show("Error", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
//   txtUserName.Text = "";
//   txtPassword.Text = "";
//   txtIDplayer.Text = "";
//   }
//
// }
// void temps(int time)
// {
//   System.Timers.Timer timer = new System.Timers.Timer(TimeSpan.FromMinutes(time).TotalMilliseconds);
//   timer.AutoReset = false;
//   timer.Elapsed += new System.Timers.ElapsedEventHandler(button1_Click);
//   timer.Start();
//   Console.WriteLine(i);
// }
//
// private void Form1_Load(object sender, EventArgs e)
// {
//   cboTime.Text = cboTime.Items[0].ToString();
//   cmbServer.Text = cmbServer.Items[0].ToString();
//
// }
//
// }

