import * as functions from "firebase-functions";

// Start writing Firebase Functions
// https://firebase.google.com/docs/functions/typescript

export const helloWorld = functions.https.onRequest((request, response) => {
  functions.logger.info("Hello logs!", {structuredData: true});
  response.send("Hello from Firebase!");
});


///cloud function to to set  an upaid reservation to cancelled after 30mins and a paid reservation to cancel after 24hrs 
export const newReservatioCancellednActivity = functions.firestore.document("users").onCreate((snapshot,ctx)=>{

});
///functions to handle sending notification to a user about a cancelled notification
export const handleReservationNotifcation =functions.firestore.document("restaurants/{id}").onUpdate((snapshot,ctx)=>{});

///cloud function to handle setting a cumulative ratings of a paticular restaurant
export const onRatingActivity = functions.firestore.document("restaurants/{id}").onUpdate((snapshot,ctx)=>{});