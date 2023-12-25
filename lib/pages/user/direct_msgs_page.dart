import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/consts/user.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';

class DirectMsgsPage extends StatefulWidget {
  const DirectMsgsPage({super.key});

  @override
  State<DirectMsgsPage> createState() => _DirectMsgsPageState();
}

class _DirectMsgsPageState extends State<DirectMsgsPage> {
  var filteredDirectMsgs = directMsgs;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return ResponsiveScaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // TODO: Show left navigation drawer
          },
        ),
        title: Text(localizations.directMsgs),
      ),
      body: Builder(
        builder: (context) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 76, // The height of the search username card
                ),
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: filteredDirectMsgs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          'assets/user/profile_pics/${filteredDirectMsgs[index].username}.png',
                          width: 40,
                          height: 40,
                        ),
                        title: Text(filteredDirectMsgs[index].username),
                        subtitle: Text(filteredDirectMsgs[index].lastChatMsg),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          color: const Color(0xFFC0C000),
                          onPressed: () {
                            // TODO: Pop up a direct message menu
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.zero,
                elevation: 4,
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide.none,
                ),
                child: Padding(
                  padding: EdgeInsets.all(context.spacing.m),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      icon: const Icon(Icons.search),
                      hintText: localizations.searchUsername,
                      isDense: true,
                    ),
                    onChanged: (value) {
                      setState(() {
                        if (value.trim().isEmpty) {
                          filteredDirectMsgs = directMsgs;
                        } else {
                          filteredDirectMsgs = extractAll(
                            query: value.trim(),
                            choices: directMsgs,
                            cutoff: 50,
                            getter: (directMsg) => directMsg.username,
                          ).map((result) => result.choice).toList();
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          // TODO: Add a direct message (DM)
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
