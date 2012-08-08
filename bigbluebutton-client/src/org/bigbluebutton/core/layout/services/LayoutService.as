/**
 * BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
 *
 * Copyright (c) 2012 BigBlueButton Inc. and by respective authors (see below).
 *
 * This program is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License as published by the Free Software
 * Foundation; either version 2.1 of the License, or (at your option) any later
 * version.
 *
 * BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along
 * with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
 * 
 * Author: Felipe Cecagno <felipe@mconf.org>
 */
package org.bigbluebutton.core.layout.services
{
  import flash.events.IEventDispatcher;
  
  import org.bigbluebutton.core.layout.model.LayoutDefinition;
  
  public class LayoutService
  {
    private var _attributes:Object;
    private var _layoutSOService:LayoutSharedObjectService;
    
    public function LayoutService() {
     
    }
    
    public function join():void {
//      _layoutSOService = new LayoutSharedObjectService(_attributes.connection);
 //     _layoutSOService.join(_attributes.uri + "/" + _attributes.room);
    }
    
    public function leave():void {
      _layoutSOService.leave();
    }
    
    public function initLayout(success:Boolean):void {
      if (success)
        _layoutSOService.initLayout();
    }
    
    public function lockLayout(layout:LayoutDefinition):void {
      _layoutSOService.lockLayout(layout);
    }
    
    public function unlockLayout():void {
      _layoutSOService.unlockLayout();
    }
  }
}