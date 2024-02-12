import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reserva_user/logics/prociders/counter_provider.dart';

import 'package:reserva_user/utils/ElevatedButton.dart';
import 'package:velocity_x/velocity_x.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Booking",
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Madlyan Restaurant ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ).pOnly(
              left: 10,
              bottom: 3,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.red,
                ).pOnly(left: 5),
                const Text(
                  "4211 Cherry Manhattan, New York",
                )
              ],
            ).pOnly(
              bottom: 10,
            ),
            Center(
              child: Container(
                width: 367.w,
                height: 196.h,
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/vvvv.png",
                    ),
                  ),
                ),
              ).pOnly(
                left: 7,
                right: 7,
              ),
            ),
            Row(
              children: [
                const Text(
                  "Reservation Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ).pOnly(
                  left: 7,
                  top: 10,
                ),
                const Spacer(),
                const Text(
                  "Edit Slots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.deepOrangeAccent,
                  ),
                  textAlign: TextAlign.end,
                ).pOnly(
                  right: 7,
                  top: 10,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 29.w,
                  height: 29.h,
                  decoration: ShapeDecoration(
                    color: Colors.deepOrange.shade100,
                    shape: const OvalBorder(),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.calendar_month_sharp,
                    ),
                  ),
                ).pOnly(
                  left: 10,
                  top: 20,
                  bottom: 10,
                  right: 15,
                ),
                const Text(
                  "04 may at 05:00 PM",
                  style: TextStyle(
                    fontSize: 18.55555,
                    fontWeight: FontWeight.bold,
                  ),
                ).pOnly(
                  top: 16,
                  bottom: 3,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 29.w,
                  height: 29.h,
                  decoration: ShapeDecoration(
                    color: Colors.deepOrange.shade100,
                    shape: const OvalBorder(),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.blueAccent,
                    ),
                  ),
                ).pOnly(
                  left: 10,
                  bottom: 10,
                  right: 15,
                ),
                const Text(
                  "Number of guest: 3",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.5555,
                  ),
                ).pOnly(
                  bottom: 3,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 29.w,
                  height: 29.h,
                  decoration: ShapeDecoration(
                    color: Colors.deepOrange.shade100,
                    shape: const OvalBorder(),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                ).pOnly(
                  left: 10,
                  bottom: 10,
                  right: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Madlyan Restaurant ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "4211 Cherry Manhattan, New York",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                )
              ],
            ).pOnly(
              bottom: 20,
            ),
            InkWell(
              child: Container(
                width: 335.w,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_sharp,
                    ).pOnly(left: 13, right: 15),
                    const Text(
                      "Special Request",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    )
                  ],
                ),
              ),
              onTap: () {
                specialRequestDialog(context);
              },
            ),
            InkWell(
              child: Container(
                width: 335.w,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_circle_outline_outlined,
                    ).pOnly(
                      left: 13,
                      right: 15,
                    ),
                    const Text(
                      "Add on Occasion",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    ),
                  ],
                ),
              ),
              onTap: () {
                occasionDialog(context);
              },
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone_android_rounded,
                ).pOnly(
                  left: 13,
                  right: 10,
                ),
                const Column(
                  children: [
                    Text(
                      "Sukhveer singh ",
                    ),
                    Text(
                      "+9465056434",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  textAlign: TextAlign.end,
                  "Edti",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                  ),
                ).pOnly(
                  right: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Terms and Conditions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ).pOnly(
              left: 7,
            ),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an read more",
              style: TextStyle(
                fontSize: 12,
              ),
            ).pOnly(
              left: 7,
            ),
            const SizedBox(
              height: 30,
            ),
            AppBtn(
              title: "Confirm",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              onPressed: () => bookingSuccessfulDialog(context),
            ).pOnly(bottom: 10)
          ],
        ),
      ),
    );
  }

  void onChangedOccasion({
    required int? value,
    required BuildContext context,
  }) {
    if (value == null) return;
    context.read<AddAnOccasionProvider>().onTap(value);
  }

  void occasionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Consumer<AddAnOccasionProvider>(
              builder: (context, controller, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Add on Occasion",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ).pOnly(
                  top: 10.h,
                  left: 14.w,
                  bottom: 10.h,
                ),
                for (int index = 0; index < listOccasionModel.length; index++)
                  InkWell(
                    onTap: () {
                      onChangedOccasion(
                        value: index,
                        context: context,
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 16.h,
                          width: 16.h,
                          child: Image(
                            image: AssetImage(
                              listOccasionModel[index].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ).pOnly(right: 10.w),
                        Text(
                          listOccasionModel[index].title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Radio<int>(
                          value: index,
                          groupValue: controller.groupValue,
                          onChanged: (value) => onChangedOccasion(
                            value: value,
                            context: context,
                          ),
                        )
                      ],
                    ),
                  ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Ok",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            );
          }),
        );
      },
    );
  }

  void specialRequestDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Consumer<AddAnOccasionProvider>(
              builder: (context, controller, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Text(
                      "Mention your special requests",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white60,
                      ),
                      child: const Center(
                          child: Icon(
                        CupertinoIcons.xmark,
                        size: 15,
                      )),
                    ).pOnly(left: 40),
                  ],
                ),
                TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const Text(
                  "We will pass your request to the restaurant.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.start,
                ).pOnly(top: 6, bottom: 6),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.deepOrange,
                    ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ).w(240).h(40),
              ],
            );
          }),
        );
      },
    );
  }

  bookingSuccessfulDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.done_all_sharp,
                color: Colors.green,
                size: 60.sp,
              ).pOnly(bottom: 10, top: 20),
              Text("Booking ID : 245871").pOnly(bottom: 10),
              Text(
                "  Your slot has been Successfully Booked at the Madlyan Restaurant",
                maxLines: 5,
                textAlign: TextAlign.center,
              ),
              Text(
                "Booking Successful",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ).pOnly(bottom: 10, top: 15),
              AppBtn(
                width: 0.5,
                title: "Back To Home",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  bookingPendingDialog(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  bookingPendingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.lock_clock,
                color: Colors.deepPurple,
                size: 60.sp,
              ).pOnly(bottom: 10, top: 20),
              Text("Booking ID : 245871").pOnly(bottom: 10),
              Text(
                " Your slot has been pending, please wait for the final confirmation",
                maxLines: 5,
                textAlign: TextAlign.center,
              ).pOnly(bottom: 20),

              AppBtn(
                width: 0.5,
                title: "Back To Home",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                onPressed: () {

                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class OccasionModel {
  final String title;

  final String image;

  OccasionModel({
    required this.title,
    required this.image,
  });
}

List<OccasionModel> listOccasionModel = [
  OccasionModel(
    title: "Birthday",
    image: "assets/brithday.png",
  ),
  OccasionModel(
    title: "Anniversary",
    image: "assets/caldara.png",
  ),
  OccasionModel(
    title: "Date",
    image: "assets/rs.png",
  ),
  OccasionModel(
    title: "Others",
    image: "assets/3....png",
  ),
];
