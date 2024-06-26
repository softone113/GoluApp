import 'package:flutter/material.dart';
import 'package:goluu_app/utils/color.dart';

class CosmicAdvisor extends StatefulWidget {
  const CosmicAdvisor({Key? key}) : super(key: key);

  @override
  State<CosmicAdvisor> createState() => _CosmicAdvisorState();
}

class _CosmicAdvisorState extends State<CosmicAdvisor> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.white,
        automaticallyImplyLeading: false,
        leading: CircleAvatar(
          radius: 2,
          backgroundColor: ColorResource.darkPink,
          child: IconButton(
            icon: const Icon(Icons.menu, color: ColorResource.white),
            onPressed: () {},
          ),
        ),
        title: const Text(
          "My Cosmic Advisor",
          style: TextStyle(color: ColorResource.darkBlue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_3_outlined,
                color: ColorResource.darkPink),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/topBanner.png",
                width: width,
                height: 150,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: height * .05,
                left: width * .3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Go with us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorResource.white,
                        fontSize: width * .08,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "assets/images/goluLogo.png",
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * .01,
              horizontal: width * .025,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(color: ColorResource.darkPink),
                    ),
                    child: TextField(
                      // controller: _textController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      onTap: () {
                        // if (_showEmoji)
                        //   setState(() {
                        //     FocusScope.of(context).unfocus();
                        //     _showEmoji = !_showEmoji;
                        //   });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Type your questions here..',
                        hintStyle: TextStyle(color: ColorResource.darkPink),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // if (_textController.text.isNotEmpty) {
                    //   Apis.sendMessage(widget.user, _textController.text, Type.text);
                    //   _textController.text = '';
                    // }
                  },
                  minWidth: 0,
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 5,
                    left: 10,
                  ),
                  shape: const CircleBorder(),
                  color: ColorResource.darkPink,
                  child: const Icon(
                    Icons.navigate_next,
                    color: ColorResource.white,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}