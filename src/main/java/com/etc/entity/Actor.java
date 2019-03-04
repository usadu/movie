package com.etc.entity;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Component
public class Actor {
        private int actorId;
        private String actorName;
        private String actorImg;
		public int getActorId() {
			return actorId;
		}
		public void setActorId(int actorId) {
			this.actorId = actorId;
		}
		public String getActorName() {
			return actorName;
		}
		public void setActorName(String actorName) {
			this.actorName = actorName;
		}
		public String getActorImg() {
			return actorImg;
		}
		public void setActorImg(String actorImg) {
			this.actorImg = actorImg;
		}
		@Override
		public String toString() {
			return "ActorDao [actorId=" + actorId + ", actorName=" + actorName + ", actorImg=" + actorImg + "]";
		}
		public Actor(int actorId, String actorName, String actorImg) {
			super();
			this.actorId = actorId;
			this.actorName = actorName;
			this.actorImg = actorImg;
		}
public Actor() {
	// TODO Auto-generated constructor stub
}    
}
