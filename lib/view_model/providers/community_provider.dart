import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:com.example.while_app/resources/components/message/apis.dart';
import 'package:com.example.while_app/resources/components/message/models/community_user.dart';

class CommunityProviders extends StateNotifier<Community> {
  CommunityProviders()
      : super(Community(
            easyQuestions: 0,
            hardQuestions: 0,
            mediumQuestions: 0,
            image: 'aa',
            about: 'about',
            name: 'Ankit',
            createdAt: 'createdAt',
            id: 'id',
            email: 'email',
            type: 'type',
            noOfUsers: 'noOfUsers',
            domain: 'domain',
            timeStamp: 'timeStamp',
            admin: 'admin'));

  void changeName(Community community) {
    var data = APIs.getCommunityInfos(community);

    state = Community(
        easyQuestions: 0,
        hardQuestions: 0,
        mediumQuestions: 0,
        image: data.image,
        about: data.about,
        name: data.name,
        createdAt: data.createdAt,
        id: data.id,
        email: data.email,
        type: data.type,
        noOfUsers: data.noOfUsers,
        domain: data.domain,
        timeStamp: data.timeStamp,
        admin: data.admin);
    log('//image');
    log(state.image);
  }
}

final communityProvider = StateNotifierProvider<CommunityProviders, Community>(
  (ref) {
    return CommunityProviders();
  },
);
