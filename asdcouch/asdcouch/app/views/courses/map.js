function(doc){
	if(doc._id.substr(0,10) === "jsoncomics"){
		emit(doc._id,{
			"title": doc.title,
			"volume": doc.volume,
			"issue": doc.issue,
			"pubDate": doc.pubDate,
			"publisher": doc.publisher,
			"ammount": doc.ammount,
			"favorite": doc.favorite,
			"notes": doc.notes
		});
	}
};
