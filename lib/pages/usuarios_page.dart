import 'package:flutter/material.dart';
import 'package:kafechat/models/usuario.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final usuarios = [
    Usuario(
        uid: '1', nombre: 'Felipe', email: 'felipe@kafechat.cl', inline: true),
    Usuario(
        uid: '2', nombre: 'Karen', email: 'Karen@kafechat.cl', inline: false),
    Usuario(
        uid: '3',
        nombre: 'Marcela',
        email: 'Marcela@kafechat.cl',
        inline: true),
    Usuario(
        uid: '4',
        nombre: 'Marilia',
        email: 'Marilia@kafechat.cl',
        inline: true),
    Usuario(
        uid: '5', nombre: 'Telita', email: 'Telita@kafechat.cl', inline: false),
    Usuario(
        uid: '6',
        nombre: 'Cucho',
        email: 'felCuchoipe@kafechat.cl',
        inline: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Felipe Eduardo',
          style: TextStyle(color: Colors.black54),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.black54,
            onPressed: () {}),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          )
        ],
      ),
      // libreria pull_to_refresh
      body: SmartRefresher(
        onRefresh: _cargarUsuarios,
        controller: _refreshController,
        enablePullDown: true,
        header: WaterDropHeader(
          complete: Icon(
            Icons.check,
            color: Colors.blue[400],
          ),
          waterDropColor: Colors.blue[400],
        ),
        child: _buildListViewUsuarios(),
      ),
    );
  }

  ListView _buildListViewUsuarios() {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => _buldUsuarioTile(usuarios[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuarios.length);
  }

  ListTile _buldUsuarioTile(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      subtitle: Text(usuario.email),
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(usuario.nombre.substring(0, 2)),
      ),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: usuario.inline ? Colors.green[300] : Colors.red,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  _cargarUsuarios() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }
}
