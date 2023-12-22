CREATE SCHEMA IF NOT EXISTS `THE DETECTIVE CLUB MURDER`;
USE `THE DETECTIVE CLUB MURDER`;

CREATE TABLE IF NOT EXISTS `suspect` (
    `fname` VARCHAR(100) NOT NULL,
    `lname` VARCHAR(100) NOT NULL,
    `description` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`fname`)
);
INSERT INTO `suspect` VALUES 
('Valerie', 'Chime', 'Sir Aubrey’s mousy, long-suffering secretary'),
('Alex', 'Masters', 'former marine turned bestselling thriller writer'),
('Dolores', 'de l’Amour', 'ageing glamour puss and author of steamy romantic crime novels'),
('A. N.', 'Andrews', 'the serious young author of this year''s hottest psychological thriller debut'),
('Kick', 'Carmichael', 'ex-professional tennis player, now celebrity children''s writer'),
('Tuffy', 'Farqueson', 'Sir Aubrey''s port-swilling agent and man about town'),
('Dr Rowan', 'McTaggart', 'grizzled medical examiner and true crime author'),
('Clive', 'Barking', 'writer of historical crime, and Sir Aubrey''s long-time friend and rival');

CREATE TABLE `motives` (
    `id` INTEGER(10) NOT NULL,
    `suspect` VARCHAR(100) NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`suspect`)
        REFERENCES `suspect` (`fname`)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `motives` VALUES 
(1, 'Valerie', 'Years of supporting him, typing his manuscripts, and nurturing your own literary dreams; sadly, your manuscript vanished.'),
(2, 'Alex', 'known as the enfant terrible of the crime-writing world, sleeping and drinking your way around London’s literati. Unfortunately all this philandering and partying doesn’t leave much time to get the words on the page, and of late you have been suffering from crippling writer’s block.'),
(3, 'Dolores', 'Unfortunately, recent reviews suggest that you have not kept up with the times, and that the loving descriptions of her ample curves and habit of falling into bed with police and suspects have no place in a modern crime novel'),
(4, 'A. N.', 'Riding high on the rapturous pre-publication buzz for first novel, which just received a starred Kirkus review and glowing quotes from a host of bignames. Unfortunately, it seems that not everyone here is happy for your success, and you are worried that the news of a big film deal is going to sour the atmosphere further.'),
(5, 'Kick', 'Fame as Mindy’s creator has now almost surpassed your reputation as a tennis player. Professionally, life couldn’t be better ... if only you could stop those persistent rumours that you don’t actually write the books yourself.'),
(6, 'Tuffy', 'publishing isn’t a lucrative business, and coming up to retirement you realise that you might need one last cracker of a deal to feather your nest. Maybe you can poach someone here tonight?'),
(7, 'Dr Rowan', 'You have made many enemies with your fearless pursuit of the truth ... is it possible Aubrey St Clair was one of them? He was certainly asking some very odd questions last time you met ...'),
(8, 'Clive', 'The one feather in your cap that you have never managed to attain is a Bloody Nib Award, which Aubrey has won three times.');

CREATE TABLE `defend` (
    `id` INTEGER(10) NOT NULL,
    `suspect` VARCHAR(100) NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`suspect`)
        REFERENCES `suspect` (`fname`)
        ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO `defend` VALUES 
(1, 'Valerie', 'Oh! Oh my goodness. This is – well, it’s just terrible. Whatever shall we do? Stebbings, you must call the police at once. And as for you, Clara, flinging these wild accusations around – I never heard of such impertinence. When I left Sir Aubrey’s study he was alive and well, sitting at the desk drafting his after-dinner speech for the evening. I offered to type it up for him, but he said there was no need, as he could read quite well from his handwritten notes. That was at six o’clock – and after that, I popped along to my office to close up my typewriter, and then went straight down to the hall where the first of the writers had already arrived. Since then I’ve been engaged in conversation all evening with Sir Aubrey’s guests. Ask them if you don’t believe me!'),
(2, 'Alex', 'I''m flabbergasted by the notion of Aubrey''s demise! That young woman''s accusations are preposterous. I last saw Aubrey at my writing retreat, not engaging in any murderous act. I boarded the 17.20 train from London, reaching Mistletan Station by 17.55. A brisk ten-minute walk brought me here by 18.05. Stebbings, the butler, welcomed me, prepared a stiff whiskey and soda (a tad too heavy on the soda), and left me alone in the hall. Aubrey''s secretary arrived shortly after. I spent the entire evening there, engrossed in newspapers and conversation. I categorically deny any chance to harm our esteemed host.'),
(3, 'Dolores', 'I can hardly fathom the notion of Aubrey''s demise. Memories of our shared moments at the Ritz Carlton New York flood my thoughts, where he graciously danced me through the ballroom, a solace after the loss of my late husband. The insinuation that I, in any way, caused harm to Aubrey is preposterous. My affection for him was evident, highlighted by my glowing praise for his upcoming novel. True, I visited his study upon arrival, intending to converse, but finding him occupied, we deferred to post-dinner. Alas, the tragic turn of events prevents me from expressing my true sentiments. If only I had confronted that secretary sooner.'),
(4, 'A. N.', 'I''m at a loss for words; this is beyond terrible. Tonight was meant to be my first meeting with Sir Aubrey, a literary icon whom I''ve admired and corresponded with. I openly expressed my admiration for his work and even sent him a copy of my book, The Unreliable Narrator’s Child, to which he graciously responded by inviting me to join the Detective Club. This invitation was an overwhelming honor, and tonight was to be the pinnacle of that recognition – a chance to convey my gratitude in person. Unfortunately, my train from London arrived late, and the timing proved tragic. Had I been there just ten minutes earlier, perhaps I could have prevented this dreadful crime. The weight of guilt is unbearable; I''ll never forgive myself for the delay that may have cost us a literary giant'),
(5, 'Kick', 'Well, this is just absolutely frightful news. Poor old Aubrey – and stabbed you say? Just like in my fourth novel Mindy Day and the Clue of the Poisoned Racket. Or was it my seventh, Mindy Day and the Match Point Murder? Regardless, it’s a tragedy and I very much hope the murderer is brought swiftly to justice. It’s just a shame that I arrived too late to pick up any clues. I drove down from London and was one of the last to get here – in fact the party was in full swing when I turned up, as Stebbings can attest, since he let me in. As you can see from this, any suggestion of my involvement is absurd and my lawyer would no doubt like to speak with anyone who says otherwise.'),
(6, 'Tuffy', 'In shock over Aubrey''s death, I grieve not only a friend but a valued client. The loss to literature is profound; he recently shared plans for his novel "Eric Argent and the Secretary’s Revenge." The prospect of a collaborator lingers. Amid absurd accusations, my innocence is clear. I visited Aubrey upon arrival, but he deferred conversation until post-dinner while dressing. Aubrey, a lucrative client, was my golden goose; harming him would defy reason. Now, I must address obituaries and publishers, contemplating a commemorative edition. The allegation is baseless, a perplexing twist in the tragic unraveling of a literary luminary''s demise.'),
(7, 'Dr Rowan', 'Good God – Aubrey, murdered in cold blood? What a terrible thing to happen. And what a crying shame that he wasn’t discovered in time for me to give him first aid – as a qualified medical examiner I could no doubt have helped, but it sounds like it’s too late for that now. It’s for the police surgeon to determine time of death and all that, my professional ethics won’t let me interfere in that respect, but since you’re all being so transparent, I don’t mind telling you that I came down by the London train and arrived at the house at about twenty past six. The train was late, or I would have been here earlier. As it was, I was one of the last to arrive.'),
(8, 'Clive', 'Aubrey! Aubrey! Aubrey! Oh, my old friend and hunting partner, what a black day this is. I blame myself of course – if I had only been staying the night as I usually did, I would have been in the house all day, and in a position to spot any hanky-panky. And to hear that he was stabbed with the very letter opener I gave him myself – that only makes it all the more bitter. As it was, I drove down from London late and arrived at the party in full swing. I did think about going up to see Aubrey, of course I did – but his secretary told me he was busy writing his speech, and I accepted that. Now I wonder if she was putting me off.');

CREATE TABLE IF NOT EXISTS `QnA` (
    `id` integer(40) NOT NULL,
    `suspect` varchar(10) NOT NULL,
    `question number` integer(10) NOT NULL, 
    `question` VARCHAR(500) NOT NULL,
    `answer` VARCHAR(500) NOT NULL,
    PRIMARY KEY (`id`),
	FOREIGN KEY (`suspect`)
        REFERENCES `suspect` (`fname`)
        ON DELETE CASCADE ON UPDATE CASCADE
);
